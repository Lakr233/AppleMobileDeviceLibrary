#!/bin/bash

# Capture source notices once per build prefix, then verify them at each package boundary.
set -euo pipefail

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
ROOT_DIR=$(cd "$SCRIPT_DIR/.." && pwd)
NOTICE_TMP=$(mktemp -d "${TMPDIR:-/tmp}/amdl-notices.XXXXXX")
trap 'rm -rf "$NOTICE_TMP"' EXIT
REQUIRED='["AppleMobileDeviceLibrary","libideviceactivation","libimobiledevice","libimobiledevice-glue","libplist","libtatsu","libusbmuxd","openssl"]'

die() { echo "notice error: $*" >&2; exit 1; }
digest() { sha256sum "$1" | awk '{print $1}'; }
safe_path() {
    [[ -n "$1" && "$1" != /* && "$1" != *\\* && "$1" != *$'\n'* && "$1" != *$'\r'* && "$1" != *$'\t'* ]] || return 1
    case "/$1/" in */../*|*/./*|*//*) return 1 ;; esac
}
is_notice() {
    local base
    base=$(basename "$1" | tr '[:upper:]' '[:lower:]')
    [[ "$base" =~ ^(license|licence|copying)([._-].*)?$ || "$base" =~ ^(notice|copyright|authors)(\.(txt|md|rst|html))?$ ]]
}
is_license() {
    local base
    base=$(basename "$1" | tr '[:upper:]' '[:lower:]')
    [[ "$base" =~ ^(license|licence|copying)([._-].*)?$ ]]
}

context() {
    local source=$1 expected=$2 origin revision tree tracked
    origin=$(git -C "$source" config --get remote.origin.url) || die "missing source origin: $source"
    [ -n "$origin" ] && [ "$origin" = "$expected" ] || die "unexpected source origin: $source"
    case "$origin" in
        https://*|http://*) [[ "${origin#*://}" != *@* ]] || die "credential-bearing origin" ;;
        git@*:*) ;;
        *) die "source origin is not a repository URL" ;;
    esac
    tracked=$(GIT_OPTIONAL_LOCKS=0 git -C "$source" -c core.fsmonitor=false status --porcelain --untracked-files=no) || die "source status unavailable"
    [ -z "$tracked" ] || die "tracked source is modified: $source"
    revision=$(git -C "$source" rev-parse --verify HEAD)
    tree=$(git -C "$source" rev-parse --verify "$revision^{tree}")
    [[ "$revision" =~ ^[0-9a-f]{40}([0-9a-f]{24})?$ && "$tree" =~ ^[0-9a-f]{40}([0-9a-f]{24})?$ ]] || die "missing full source object identity"
    jq -nS --arg origin "$origin" --arg revision "$revision" --arg tree "$tree" \
        '{origin:$origin,revision:$revision,tree:$tree}'
}

record_component() {
    local destination=$1 name=$2 source=$3 expected=$4 wrapper=${5:-no}
    local revision path mode file primary=0
    [[ "$name" =~ ^[A-Za-z0-9_-]+$ ]] || die "invalid component name"
    context "$source" "$expected" > "$NOTICE_TMP/context.json"
    revision=$(jq -r .revision "$NOTICE_TMP/context.json")
    git -C "$source" ls-tree -r -z --name-only "$revision" > "$NOTICE_TMP/paths"
    : > "$NOTICE_TMP/notices.jsonl"
    while IFS= read -r -d '' path; do
        if [ "$wrapper" = yes ]; then
            [ "$path" = LICENSE ] || continue
        else
            is_notice "$path" || continue
        fi
        safe_path "$path" || die "unsafe tracked notice path"
        mode=$(git -C "$source" ls-tree "$revision" -- "$path" | awk '{print $1}')
        [[ "$mode" = 100644 || "$mode" = 100755 ]] || die "notice is not a tracked regular file: $path"
        file="$destination/Licenses/$name/$path"
        mkdir -p "$(dirname "$file")"
        git -C "$source" show "$revision:$path" > "$file"
        [ -s "$file" ] || die "empty source notice: $name/$path"
        chmod 644 "$file"
        is_license "$path" && primary=1
        jq -n --arg source_path "$path" --arg path "$name/$path" --arg sha256 "$(digest "$file")" \
            '{source_path:$source_path,path:$path,sha256:$sha256}' >> "$NOTICE_TMP/notices.jsonl"
    done < "$NOTICE_TMP/paths"
    [ "$primary" = 1 ] || die "no tracked LICENSE or COPYING for $name"
    jq -sS --arg name "$name" --slurpfile context "$NOTICE_TMP/context.json" \
        '$context[0]+{name:$name,notices:(sort_by(.source_path))}' "$NOTICE_TMP/notices.jsonl"
}

capture_one() {
    local destination=$1 name=$2 source=$3 expected=$4 wrapper=${5:-no}
    local manifest="$destination/Licenses/manifest.json"
    record_component "$destination" "$name" "$source" "$expected" "$wrapper" > "$NOTICE_TMP/component.json"
    if [ ! -f "$manifest" ]; then
        printf '%s\n' '{"schema_version":1,"components":[]}' > "$NOTICE_TMP/manifest.json"
    else
        [ ! -L "$manifest" ] || die "manifest is a symlink"
        cp "$manifest" "$NOTICE_TMP/manifest.json"
    fi
    jq -S --arg name "$name" --slurpfile component "$NOTICE_TMP/component.json" \
        '.components=([.components[]|select(.name!=$name)]+$component|sort_by(.name))' \
        "$NOTICE_TMP/manifest.json" > "$manifest"
    chmod 644 "$manifest"
}

verify_manifest() {
    local manifest=$1
    [ -f "$manifest" ] && [ ! -L "$manifest" ] || die "missing regular notice manifest"
    jq -e --argjson required "$REQUIRED" '
        (keys|sort)==["components","schema_version"] and .schema_version==1 and
        (.components|type)=="array" and (.components|map(.name)|sort)==$required and
        all(.components[]; . as $c |
            (keys|sort)==["name","notices","origin","revision","tree"] and
            (.origin|type)=="string" and (.origin|length)>0 and
            (.revision|test("^[0-9a-f]{40}([0-9a-f]{24})?$")) and
            (.tree|test("^[0-9a-f]{40}([0-9a-f]{24})?$")) and
            (.notices|type)=="array" and (.notices|length)>0 and
            (.notices|map(.source_path)|unique|length)==(.notices|length) and
            any(.notices[];.source_path|split("/")|last|test("^(LICENSE|LICENCE|COPYING)([._-].*)?$";"i")) and
            all(.notices[];
                (keys|sort)==["path","sha256","source_path"] and
                (.source_path|type)=="string" and .path==($c.name+"/"+.source_path) and
                (.sha256|test("^[0-9a-f]{64}$"))))' "$manifest" >/dev/null || die "incomplete source/notice coverage"
    jq -S . "$manifest" > "$NOTICE_TMP/canonical.json"
    cmp -s "$manifest" "$NOTICE_TMP/canonical.json" || die "manifest is not canonical JSON"
}

verify() {
    local root=$1 path hash
    local licenses="$root/Licenses"
    [ -d "$licenses" ] && [ ! -L "$licenses" ] || die "missing regular Licenses directory"
    [ -z "$(find "$licenses" ! -type d ! -type f -print)" ] || die "notices contain a link or special file"
    verify_manifest "$licenses/manifest.json"
    printf '%s\n' manifest.json > "$NOTICE_TMP/expected"
    jq -r '.components[].notices[]|[.path,.sha256]|@tsv' "$licenses/manifest.json" > "$NOTICE_TMP/verify.tsv"
    while IFS=$'\t' read -r path hash; do
        safe_path "$path" || die "unsafe manifest notice path"
        [ -f "$licenses/$path" ] && [ ! -L "$licenses/$path" ] || die "missing regular notice: $path"
        [ "$(digest "$licenses/$path")" = "$hash" ] || die "notice digest mismatch: $path"
        printf '%s\n' "$path" >> "$NOTICE_TMP/expected"
    done < "$NOTICE_TMP/verify.tsv"
    (cd "$licenses" && find . -type f | sed 's|^./||' | LC_ALL=C sort) > "$NOTICE_TMP/actual"
    LC_ALL=C sort "$NOTICE_TMP/expected" > "$NOTICE_TMP/expected.sorted"
    cmp -s "$NOTICE_TMP/expected.sorted" "$NOTICE_TMP/actual" || die "unrecorded notice files"
}

compare() {
    verify "$1"
    verify "$2"
    cmp -s "$1/Licenses/manifest.json" "$2/Licenses/manifest.json" || die "architectures have different source/notice contexts"
}

copy_notices() {
    verify "$1"
    [ ! -e "$2/Licenses" ] || die "notice destination already exists"
    mkdir -p "$2"
    cp -R "$1/Licenses" "$2/Licenses"
    verify "$2"
}

verify_archive() {
    local kind=$1 archive=$2 prefix=${3:-} member path types entry
    local base="${prefix:+$prefix/}Licenses"
    mkdir -p "$NOTICE_TMP/archive/Licenses"
    if [ "$kind" = zip ]; then
        unzip -Z1 "$archive" > "$NOTICE_TMP/members"
        unzip -Z -l "$archive" > "$NOTICE_TMP/archive.types"
    else
        tar -tf "$archive" > "$NOTICE_TMP/members"
        tar -tvf "$archive" > "$NOTICE_TMP/archive.types"
    fi
    # Streaming stored bytes would hide a notice or ancestor's original type.
    while IFS= read -r member; do
        entry=${member%/}
        if [[ "$member" = "$base/"* || "$base/" = "$entry/"* ]]; then
            safe_path "$entry" || die "unsafe archive notice path"
            if [[ "$base/" = "$entry/"* && "$member" != */ ]]; then
                die "ambiguous archive notice ancestor: $member"
            fi
            [ "$(grep -Fxc -- "$member" "$NOTICE_TMP/members")" = 1 ] || die "duplicate archive notice entry"
            types=$(awk -v name="$member" '
                $1 ~ /^[-dlhcbps][rwxstST?+-]+$/ && substr($0,length($0)-length(name)+1)==name &&
                substr($0,length($0)-length(name),1) ~ /[[:space:]]/ {print substr($1,1,1)}' "$NOTICE_TMP/archive.types")
            if [[ "$member" = */ ]]; then
                [ "$types" = d ] || die "non-directory archive notice ancestor: $member"
            else
                [ "$types" = - ] || die "nonregular archive notice: $member"
            fi
        fi
    done < "$NOTICE_TMP/members"
    if [ "$kind" = zip ]; then
        unzip -p "$archive" "$base/manifest.json" > "$NOTICE_TMP/archive/Licenses/manifest.json"
    else
        tar -xOf "$archive" "$base/manifest.json" > "$NOTICE_TMP/archive/Licenses/manifest.json"
    fi
    verify_manifest "$NOTICE_TMP/archive/Licenses/manifest.json"
    printf '%s\n' "$base/manifest.json" > "$NOTICE_TMP/archive.expected"
    jq -r '.components[].notices[].path' "$NOTICE_TMP/archive/Licenses/manifest.json" > "$NOTICE_TMP/archive.paths"
    while IFS= read -r path; do
        safe_path "$path" || die "unsafe archive notice path"
        member="$base/$path"
        [ "$(grep -Fxc -- "$member" "$NOTICE_TMP/members")" = 1 ] || die "missing or duplicate archive notice: $member"
        mkdir -p "$(dirname "$NOTICE_TMP/archive/Licenses/$path")"
        if [ "$kind" = zip ]; then
            unzip -p "$archive" "$member" > "$NOTICE_TMP/archive/Licenses/$path"
        else
            tar -xOf "$archive" "$member" > "$NOTICE_TMP/archive/Licenses/$path"
        fi
        printf '%s\n' "$member" >> "$NOTICE_TMP/archive.expected"
    done < "$NOTICE_TMP/archive.paths"
    awk -v prefix="$base/" 'index($0,prefix)==1 && $0 !~ /\/$/' "$NOTICE_TMP/members" | LC_ALL=C sort > "$NOTICE_TMP/archive.actual"
    LC_ALL=C sort "$NOTICE_TMP/archive.expected" > "$NOTICE_TMP/archive.expected.sorted"
    cmp -s "$NOTICE_TMP/archive.expected.sorted" "$NOTICE_TMP/archive.actual" || die "unrecorded or duplicate archive notices"
    verify "$NOTICE_TMP/archive"
}

case "${1:-}" in
    capture)
        [ "$#" = 5 ] || die "usage: capture PREFIX NAME SOURCE EXPECTED_ORIGIN"
        capture_one "$2" "$3" "$4" "$5"
        if [ "$3" != AppleMobileDeviceLibrary ]; then
            capture_one "$2" AppleMobileDeviceLibrary "$ROOT_DIR" "$(git -C "$ROOT_DIR" config --get remote.origin.url)" yes
        fi
        ;;
    verify-source)
        [ "$#" = 5 ] || die "usage: verify-source PREFIX NAME SOURCE EXPECTED_ORIGIN"
        record_component "$NOTICE_TMP/source" "$3" "$4" "$5" > "$NOTICE_TMP/recheck.json"
        jq -S --arg name "$3" '.components[]|select(.name==$name)' "$2/Licenses/manifest.json" > "$NOTICE_TMP/recorded.json"
        cmp -s "$NOTICE_TMP/recheck.json" "$NOTICE_TMP/recorded.json" || die "compiled source context changed: $3"
        ;;
    verify) verify "$2" ;;
    compare) compare "$2" "$3" ;;
    copy) copy_notices "$2" "$3" ;;
    merge)
        destination=$2; shift 2; first=$1
        for source in "$@"; do compare "$first" "$source"; done
        copy_notices "$first" "$destination"
        ;;
    verify-zip) verify_archive zip "$2" "${3:-}" ;;
    verify-tar) verify_archive tar "$2" ;;
    *) die "expected capture, verify-source, verify, compare, copy, merge, verify-zip or verify-tar" ;;
esac
