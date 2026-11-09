#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"
SCRIPT_DIR=$(pwd)
while [ ! -d .git ]; do cd ..; done
ROOT_DIR=$(pwd)
MANIFEST="$ROOT_DIR/build/build/Licenses/manifest.json"
"$SCRIPT_DIR/payload.notices.sh" verify "$ROOT_DIR/build/build"

# A packaging/notice change must publish even if the payload refs did not move.
# Autopublish changes the wrapper HEAD, so exclude that HEAD from the fingerprint.
NOTICE_SIGNATURE=$(jq -cS '{schema_version,components:[.components[]|
    if .name=="AppleMobileDeviceLibrary" then {name,origin,notices} else . end]}' "$MANIFEST" | sha256sum | awk '{print $1}')
PACKAGING_SIGNATURE=$(
    for path in Scripts .github/workflows .gitlab-ci.yml Package.swift.template Sources; do
        source_object=$(git -C "$ROOT_DIR" rev-parse --verify "HEAD:$path") || exit 1
        [[ "$source_object" =~ ^[0-9a-f]{40}([0-9a-f]{24})?$ ]] || exit 1
        printf '%s %s\n' "$path" "$source_object"
    done | sha256sum | awk '{print $1}'
)
{
    jq -r '.components[]|select(.name!="AppleMobileDeviceLibrary")|.origin+": "+.revision' "$MANIFEST" | LC_ALL=C sort
    printf '# notice-schema: 1\n# notice-inputs-sha256: %s\n' "$NOTICE_SIGNATURE"
    printf '# packaging-inputs-sha256: %s\n' "$PACKAGING_SIGNATURE"
} > "$ROOT_DIR/src.version"

echo '== Version Signature ==================='
cat "$ROOT_DIR/src.version"
echo '========================================'
echo "[*] done $(basename "$0")"
