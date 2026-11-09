#!/bin/bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/.." && pwd)
TEST_ROOT=$(mktemp -d "${TMPDIR:-/tmp}/amdl-notice-tests.XXXXXX")
trap 'rm -rf "$TEST_ROOT"' EXIT
REAL_GIT=$(command -v git)
mkdir -p "$TEST_ROOT/mocks"

fail() { echo "FAIL: $*" >&2; exit 1; }
refuse() { if "$@" > "$TEST_ROOT/refusal.log" 2>&1; then fail "accepted invalid notice context: $*"; fi; }

cat > "$TEST_ROOT/mocks/git" <<'EOF'
#!/bin/bash
set -euo pipefail
source=.
while [[ "${1:-}" = -C || "${1:-}" = -c ]]; do
    if [ "$1" = -C ]; then source=$2; fi
    shift 2
done
meta="$source/.notice-fixture.json"
case "$1" in
    config) jq -er .origin "$meta" ;;
    status)
        [ ! -f "$source/.status-error" ] || exit 2
        if [ -f "$source/.dirty" ]; then echo ' M source.c'; fi ;;
    rev-parse)
        if [[ "${*: -1}" = *'^{tree}' ]]; then jq -er .tree "$meta";
        elif [ "${*: -1}" = 'HEAD:Scripts' ]; then jq -er .scripts_tree "$meta";
        elif [[ "${*: -1}" = HEAD:* ]]; then key=${*: -1}; jq -er --arg key "${key#HEAD:}" '.packaging_inputs[$key]' "$meta";
        else jq -er .revision "$meta"; fi ;;
    ls-tree)
        if [ "${2:-}" = -r ]; then jq -j '.files[].path+"\u0000"' "$meta";
        else path=${*: -1}; jq -er --arg path "$path" '.files[]|select(.path==$path)|.mode+" blob "+.sha+"\t"+.path' "$meta"; fi ;;
    show) path=${2#*:}; cat "$source/$path" ;;
    *) echo "unmocked git operation: $*" >&2; exit 1 ;;
esac
EOF
cat > "$TEST_ROOT/mocks/xcodebuild" <<'EOF'
#!/bin/bash
set -euo pipefail
library= headers= output=
while [ "$#" -gt 0 ]; do
    case "$1" in -library) library=$2; shift 2;; -headers) headers=$2; shift 2;; -output) output=$2; shift 2;; *) shift;; esac
done
[ -n "$output" ] || exit 0
mkdir -p "$output/macos-arm64_x86_64"
cp "$library" "$output/macos-arm64_x86_64/"
cp -R "$headers" "$output/macos-arm64_x86_64/Headers"
printf 'fixture xcframework\n' > "$output/Info.plist"
EOF
cat > "$TEST_ROOT/mocks/file" <<'EOF'
#!/bin/bash
case "${*: -1}" in
    *.a) echo application/x-archive ;;
    */bin/*) echo application/x-mach-binary ;;
    *) echo text/plain ;;
esac
EOF
cat > "$TEST_ROOT/mocks/lipo" <<'EOF'
#!/bin/bash
set -euo pipefail
if [ "$1" = -info ]; then echo 'Architectures: arm64 x86_64'; exit; fi
first=$2
while [ "$1" != -output ]; do shift; done
cp "$first" "$2"
EOF
cat > "$TEST_ROOT/mocks/libtool" <<'EOF'
#!/bin/bash
set -euo pipefail
while [ "$1" != -o ]; do shift; done
printf 'fixture archive\n' > "$2"
EOF
printf '#!/bin/bash\nexit 0\n' > "$TEST_ROOT/mocks/swift"
cp "$TEST_ROOT/mocks/swift" "$TEST_ROOT/mocks/swiftformat"
printf '#!/bin/bash\necho 01234567-89AB-CDEF-0123-456789ABCDEF\n' > "$TEST_ROOT/mocks/uuidgen"
chmod +x "$TEST_ROOT/mocks/"*

materialize() {
    local fixture=$1 name source_path blob sha
    mkdir -p "$fixture/.git" "$fixture/build/notice-source-fixtures"
    cp -R "$ROOT/Scripts" "$fixture/Scripts"
    cp "$ROOT/LICENSE" "$fixture/LICENSE"
    jq -n --arg origin https://github.com/Lakr233/AppleMobileDeviceLibrary.git \
        --arg revision "$("$REAL_GIT" -C "$ROOT" rev-parse HEAD)" \
        --arg tree "$("$REAL_GIT" -C "$ROOT" rev-parse 'HEAD^{tree}')" \
        --arg scripts_tree "$("$REAL_GIT" -C "$ROOT" rev-parse HEAD:Scripts)" \
        --arg workflows "$("$REAL_GIT" -C "$ROOT" rev-parse HEAD:.github/workflows)" \
        --arg gitlab "$("$REAL_GIT" -C "$ROOT" rev-parse HEAD:.gitlab-ci.yml)" \
        --arg template "$("$REAL_GIT" -C "$ROOT" rev-parse HEAD:Package.swift.template)" \
        --arg sources "$("$REAL_GIT" -C "$ROOT" rev-parse HEAD:Sources)" \
        --arg sha "$("$REAL_GIT" hash-object "$ROOT/LICENSE")" \
        '{origin:$origin,revision:$revision,tree:$tree,scripts_tree:$scripts_tree,
          packaging_inputs:{".github/workflows":$workflows,".gitlab-ci.yml":$gitlab,"Package.swift.template":$template,"Sources":$sources},
          files:[{path:"LICENSE",sha:$sha,mode:"100644"}]}' > "$fixture/.notice-fixture.json"
    while IFS= read -r name; do
        local source="$fixture/build/notice-source-fixtures/$name"
        mkdir -p "$source"
        jq --arg name "$name" '.sources[]|select(.name==$name)|.origin=("https://github.com/"+.repo)' \
            "$ROOT/Tests/Fixtures/notices/sources.json" > "$source/.notice-fixture.json"
        while IFS=$'\t' read -r source_path blob sha; do
            [ "$("$REAL_GIT" hash-object "$ROOT/Tests/Fixtures/notices/blobs/$blob")" = "$blob" ] || fail 'pinned Git blob differs'
            [ "$(sha256sum "$ROOT/Tests/Fixtures/notices/blobs/$blob" | awk '{print $1}')" = "$sha" ] || fail 'pinned notice digest differs'
            mkdir -p "$(dirname "$source/$source_path")"
            cp "$ROOT/Tests/Fixtures/notices/blobs/$blob" "$source/$source_path"
        done < <(jq -r --arg name "$name" '.sources[]|select(.name==$name)|.files[]|[.path,.sha,.sha256]|@tsv' "$ROOT/Tests/Fixtures/notices/sources.json")
    done < <(jq -r '.sources[].name' "$ROOT/Tests/Fixtures/notices/sources.json")
    cat > "$fixture/Scripts/build.single.static.sh" <<'EOF'
#!/bin/bash
set -euo pipefail
prefix=$1 working=$2
script=$(cd "$(dirname "$0")" && pwd)
mkdir -p "$prefix/lib" "$prefix/bin" "$prefix/include/openssl" "$prefix/include/plist" \
    "$prefix/include/libtatsu" "$prefix/include/libimobiledevice-glue" "$prefix/include/libimobiledevice"
for library in libcrypto.a libssl.a libplist-2.0.a libtatsu.a libimobiledevice-glue-1.0.a libusbmuxd-2.0.a libimobiledevice-1.0.a; do
    printf 'fixture archive\n' > "$prefix/lib/$library"
done
for binary in ideviceinfo iproxy inetcat afcclient; do printf 'fixture executable\n' > "$prefix/bin/$binary"; done
for header in openssl/ssl.h plist/plist.h libtatsu/tatsu.h libtatsu/tss.h libimobiledevice-glue/glue.h libimobiledevice/mobile.h usbmuxd-proto.h usbmuxd.h; do
    printf 'void fixture(void);\n' > "$prefix/include/$header"
done
for name in openssl libplist libtatsu libimobiledevice-glue libusbmuxd libimobiledevice libideviceactivation; do
    origin=https://github.com/libimobiledevice/$name
    [ "$name" != openssl ] || origin=https://github.com/openssl/openssl
    "$script/payload.notices.sh" capture "$prefix" "$name" "$working/notice-source-fixtures/$name" "$origin"
    "$script/payload.notices.sh" verify-source "$prefix" "$name" "$working/notice-source-fixtures/$name" "$origin"
done
EOF
    chmod +x "$fixture/Scripts/"*.sh
}

run_packages() {
    local fixture=$1
    PATH="$TEST_ROOT/mocks:$PATH" TMPDIR="$TEST_ROOT/" bash "$fixture/Scripts/build.universal.sh" > "$TEST_ROOT/universal.log" 2>&1
    PATH="$TEST_ROOT/mocks:$PATH" TMPDIR="$TEST_ROOT/" bash "$fixture/Scripts/build.xcframework.sh" > "$TEST_ROOT/framework.log" 2>&1
    PATH="$TEST_ROOT/mocks:$PATH" TMPDIR="$TEST_ROOT/" bash "$fixture/Scripts/build.spm.sh" > "$TEST_ROOT/spm.log" 2>&1
    PATH="$TEST_ROOT/mocks:$PATH" TMPDIR="$TEST_ROOT/" bash "$fixture/Scripts/build.binpack.sh" > "$TEST_ROOT/binpack.log" 2>&1
}

materialize "$TEST_ROOT/after"
run_packages "$TEST_ROOT/after"
helper="$TEST_ROOT/after/Scripts/payload.notices.sh"
"$helper" verify "$TEST_ROOT/after/build/build.spm"
for archive in "$TEST_ROOT/after/build/build.spm/BinaryTargets/"*.zip; do
    "$helper" verify-zip "$archive" "$(basename "$archive" .zip)"
done
"$helper" verify-tar "$TEST_ROOT/after/build/build.binpack/binpack.tar"
gzip -c "$TEST_ROOT/after/build/build.binpack/binpack.tar" > "$TEST_ROOT/binpack.tar.gz"
"$helper" verify-tar "$TEST_ROOT/binpack.tar.gz"

# The stored bytes can match the manifest even when a ZIP notice is a symlink.
mkdir -p "$TEST_ROOT/archive-types"
cp -R "$TEST_ROOT/after/build/build.frameworks/libplist.xcframework" "$TEST_ROOT/archive-types/"
notice=libplist.xcframework/Licenses/AppleMobileDeviceLibrary/LICENSE
target=$(cat "$TEST_ROOT/archive-types/$notice"; printf x)
target=${target%x}
rm "$TEST_ROOT/archive-types/$notice"
ln -s "$target" "$TEST_ROOT/archive-types/$notice"
(cd "$TEST_ROOT/archive-types" && zip -qy -r "$TEST_ROOT/symlink-notice.zip" libplist.xcframework)
unzip -p "$TEST_ROOT/symlink-notice.zip" "$notice" > "$TEST_ROOT/stored-notice"
cmp -s "$ROOT/LICENSE" "$TEST_ROOT/stored-notice" || fail 'symlink fixture changed notice bytes'
refuse "$helper" verify-zip "$TEST_ROOT/symlink-notice.zip" libplist.xcframework
grep -q 'nonregular archive notice' "$TEST_ROOT/refusal.log" || fail 'ZIP type was normalized'

# A link at either directory boundary must not disappear from the closure check.
mkdir -p "$TEST_ROOT/ancestor-types/libplist.xcframework"
ln -s target "$TEST_ROOT/ancestor-types/libplist.xcframework/Licenses"
cp "$TEST_ROOT/after/build/build.spm/BinaryTargets/libplist.xcframework.zip" "$TEST_ROOT/ancestor-notice.zip"
(cd "$TEST_ROOT/ancestor-types" && zip -qy "$TEST_ROOT/ancestor-notice.zip" libplist.xcframework/Licenses)
refuse "$helper" verify-zip "$TEST_ROOT/ancestor-notice.zip" libplist.xcframework
grep -q 'ambiguous archive notice ancestor' "$TEST_ROOT/refusal.log" || fail 'Licenses ancestor link was ignored'
rm "$TEST_ROOT/ancestor-types/libplist.xcframework/Licenses"
rmdir "$TEST_ROOT/ancestor-types/libplist.xcframework"
ln -s target "$TEST_ROOT/ancestor-types/libplist.xcframework"
cp "$TEST_ROOT/after/build/build.spm/BinaryTargets/libplist.xcframework.zip" "$TEST_ROOT/prefix-notice.zip"
(cd "$TEST_ROOT/ancestor-types" && zip -qy "$TEST_ROOT/prefix-notice.zip" libplist.xcframework)
refuse "$helper" verify-zip "$TEST_ROOT/prefix-notice.zip" libplist.xcframework
grep -q 'ambiguous archive notice ancestor' "$TEST_ROOT/refusal.log" || fail 'framework ancestor link was ignored'

cp -R "$TEST_ROOT/after/build/build.binpack/Licenses" "$TEST_ROOT/archive-types/Licenses"
rm "$TEST_ROOT/archive-types/Licenses/AppleMobileDeviceLibrary/LICENSE"
cp "$ROOT/LICENSE" "$TEST_ROOT/archive-types/anchor"
ln "$TEST_ROOT/archive-types/anchor" "$TEST_ROOT/archive-types/Licenses/AppleMobileDeviceLibrary/LICENSE"
tar -cf "$TEST_ROOT/hardlink-notice.tar" -C "$TEST_ROOT/archive-types" anchor Licenses
refuse "$helper" verify-tar "$TEST_ROOT/hardlink-notice.tar"
grep -q 'nonregular archive notice' "$TEST_ROOT/refusal.log" || fail 'tar hardlink type was normalized'

PATH="$TEST_ROOT/mocks:$PATH" bash "$TEST_ROOT/after/Scripts/save.src.version.sh" > "$TEST_ROOT/version.log"
cp "$TEST_ROOT/after/src.version" "$TEST_ROOT/version.saved"
cp "$TEST_ROOT/after/.notice-fixture.json" "$TEST_ROOT/wrapper.context.saved"
manifest="$TEST_ROOT/after/build/build/Licenses/manifest.json"
cp "$manifest" "$TEST_ROOT/universal.manifest.saved"
jq -S --arg revision 1111111111111111111111111111111111111111 \
    --arg tree 2222222222222222222222222222222222222222 \
    '.components|=map(if .name=="AppleMobileDeviceLibrary" then .revision=$revision|.tree=$tree else . end)' \
    "$TEST_ROOT/universal.manifest.saved" > "$manifest"
jq '.revision="1111111111111111111111111111111111111111"|.tree="2222222222222222222222222222222222222222"' \
    "$TEST_ROOT/wrapper.context.saved" > "$TEST_ROOT/after/.notice-fixture.json"
PATH="$TEST_ROOT/mocks:$PATH" bash "$TEST_ROOT/after/Scripts/save.src.version.sh" > "$TEST_ROOT/version.log"
cmp -s "$TEST_ROOT/version.saved" "$TEST_ROOT/after/src.version" || fail 'autopublish wrapper HEAD causes release loop'
cp "$TEST_ROOT/universal.manifest.saved" "$manifest"
cp "$TEST_ROOT/wrapper.context.saved" "$TEST_ROOT/after/.notice-fixture.json"
jq '.scripts_tree="0000000000000000000000000000000000000000"' "$TEST_ROOT/wrapper.context.saved" > "$TEST_ROOT/after/.notice-fixture.json"
PATH="$TEST_ROOT/mocks:$PATH" bash "$TEST_ROOT/after/Scripts/save.src.version.sh" > "$TEST_ROOT/version.log"
if cmp -s "$TEST_ROOT/version.saved" "$TEST_ROOT/after/src.version"; then fail 'packaging changes do not trigger publication'; fi
cp "$TEST_ROOT/wrapper.context.saved" "$TEST_ROOT/after/.notice-fixture.json"
for input in .github/workflows .gitlab-ci.yml Package.swift.template Sources; do
    jq --arg input "$input" '.packaging_inputs[$input]="0000000000000000000000000000000000000000"' \
        "$TEST_ROOT/wrapper.context.saved" > "$TEST_ROOT/after/.notice-fixture.json"
    PATH="$TEST_ROOT/mocks:$PATH" bash "$TEST_ROOT/after/Scripts/save.src.version.sh" > "$TEST_ROOT/version.log"
    if cmp -s "$TEST_ROOT/version.saved" "$TEST_ROOT/after/src.version"; then fail "pipeline input does not change fingerprint: $input"; fi
done
cp "$TEST_ROOT/wrapper.context.saved" "$TEST_ROOT/after/.notice-fixture.json"
cp "$TEST_ROOT/after/.notice-fixture.json" "$TEST_ROOT/missing-input.saved"
jq 'del(.packaging_inputs.Sources)' "$TEST_ROOT/missing-input.saved" > "$TEST_ROOT/after/.notice-fixture.json"
PATH="$TEST_ROOT/mocks:$PATH" refuse bash "$TEST_ROOT/after/Scripts/save.src.version.sh"
cp "$TEST_ROOT/missing-input.saved" "$TEST_ROOT/after/.notice-fixture.json"
jq -S '.components|=map(if .name=="libplist" then .revision="1111111111111111111111111111111111111111" else . end)' \
    "$TEST_ROOT/universal.manifest.saved" > "$manifest"
PATH="$TEST_ROOT/mocks:$PATH" bash "$TEST_ROOT/after/Scripts/save.src.version.sh" > "$TEST_ROOT/version.log"
if cmp -s "$TEST_ROOT/version.saved" "$TEST_ROOT/after/src.version"; then fail 'payload revision does not change fingerprint'; fi
cp "$TEST_ROOT/universal.manifest.saved" "$manifest"
printf '\n' >> "$TEST_ROOT/after/build/build/Licenses/AppleMobileDeviceLibrary/LICENSE"
wrapper_notice=$(sha256sum "$TEST_ROOT/after/build/build/Licenses/AppleMobileDeviceLibrary/LICENSE" | awk '{print $1}')
jq -S --arg hash "$wrapper_notice" '.components|=map(if .name=="AppleMobileDeviceLibrary" then .notices[0].sha256=$hash else . end)' \
    "$TEST_ROOT/universal.manifest.saved" > "$manifest"
PATH="$TEST_ROOT/mocks:$PATH" bash "$TEST_ROOT/after/Scripts/save.src.version.sh" > "$TEST_ROOT/version.log"
if cmp -s "$TEST_ROOT/version.saved" "$TEST_ROOT/after/src.version"; then fail 'wrapper notice does not change fingerprint'; fi
cp "$ROOT/LICENSE" "$TEST_ROOT/after/build/build/Licenses/AppleMobileDeviceLibrary/LICENSE"
cp "$TEST_ROOT/universal.manifest.saved" "$manifest"

# The actual consumer-pinned packaging scripts lose the same supplied notices.
materialize "$TEST_ROOT/before"
cp "$ROOT/Tests/Fixtures/baseline-553a0bf/"*.sh "$TEST_ROOT/before/Scripts/"
run_packages "$TEST_ROOT/before"
refuse "$helper" verify-zip "$TEST_ROOT/before/build/build.spm/BinaryTargets/libplist.xcframework.zip" libplist.xcframework
refuse "$helper" verify-tar "$TEST_ROOT/before/build/build.binpack/binpack.tar"

first="$TEST_ROOT/after/build/build.arm64"
second="$TEST_ROOT/after/build/build.x86_64"
cp "$second/Licenses/manifest.json" "$TEST_ROOT/manifest.saved"
jq -S '.components[0].revision="0000000000000000000000000000000000000000"' "$TEST_ROOT/manifest.saved" > "$second/Licenses/manifest.json"
refuse "$helper" merge "$TEST_ROOT/mixed" "$first" "$second"
cp "$TEST_ROOT/manifest.saved" "$second/Licenses/manifest.json"
cp "$ROOT/LICENSE" "$second/LICENSE"
jq -S '.components[0].notices[0].source_path="../../LICENSE"|.components[0].notices[0].path="AppleMobileDeviceLibrary/../../LICENSE"' \
    "$TEST_ROOT/manifest.saved" > "$second/Licenses/manifest.json"
refuse "$helper" verify "$second"
grep -q 'unsafe manifest notice path' "$TEST_ROOT/refusal.log" || fail 'unsafe path did not reach path refusal'
cp "$TEST_ROOT/manifest.saved" "$second/Licenses/manifest.json"
printf 'corrupted\n' >> "$second/Licenses/libplist/COPYING"
refuse "$helper" verify "$second"
cp "$first/Licenses/libplist/COPYING" "$second/Licenses/libplist/COPYING"
rm "$second/Licenses/libtatsu/COPYING"
refuse "$helper" verify "$second"
cp "$first/Licenses/libtatsu/COPYING" "$second/Licenses/libtatsu/COPYING"
ln -s COPYING "$second/Licenses/libtatsu/extra"
refuse "$helper" verify "$second"
rm "$second/Licenses/libtatsu/extra"
dirty="$TEST_ROOT/after/build/notice-source-fixtures/libtatsu"
touch "$dirty/.dirty"
PATH="$TEST_ROOT/mocks:$PATH" refuse "$helper" capture "$TEST_ROOT/dirty" libtatsu "$dirty" https://github.com/libimobiledevice/libtatsu
rm "$dirty/.dirty"
touch "$dirty/.status-error"
PATH="$TEST_ROOT/mocks:$PATH" refuse "$helper" capture "$TEST_ROOT/status-error" libtatsu "$dirty" https://github.com/libimobiledevice/libtatsu
rm "$dirty/.status-error"
PATH="$TEST_ROOT/mocks:$PATH" refuse "$helper" capture "$TEST_ROOT/wrong-origin" libtatsu "$dirty" https://github.com/wrong/source
cp "$dirty/.notice-fixture.json" "$TEST_ROOT/context.saved"
jq '.revision="0000000000000000000000000000000000000000"' "$TEST_ROOT/context.saved" > "$dirty/.notice-fixture.json"
PATH="$TEST_ROOT/mocks:$PATH" refuse "$helper" verify-source "$first" libtatsu "$dirty" https://github.com/libimobiledevice/libtatsu
cp "$TEST_ROOT/context.saved" "$dirty/.notice-fixture.json"
jq -S 'del(.revision)' "$dirty/.notice-fixture.json" > "$TEST_ROOT/no-context"
cp "$dirty/.notice-fixture.json" "$TEST_ROOT/context.saved"
cp "$TEST_ROOT/no-context" "$dirty/.notice-fixture.json"
PATH="$TEST_ROOT/mocks:$PATH" refuse "$helper" capture "$TEST_ROOT/no-source-context" libtatsu "$dirty" https://github.com/libimobiledevice/libtatsu
cp "$TEST_ROOT/context.saved" "$dirty/.notice-fixture.json"

echo 'Notice capture, source-context refusal, architecture comparison and final ZIP/tar packaging checks passed.'
