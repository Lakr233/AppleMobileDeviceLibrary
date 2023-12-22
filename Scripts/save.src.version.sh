#!/bin/bash

cd $(dirname $0)
SCRIPT_DIR=$(pwd)

while true
do
    if [ -d .git ]; then
        break
    fi
    cd ..
done
WORKING_DIR=$(pwd)/build
VERSION_FILE=$(pwd)/src.version

PAYLOAD=()
for GIT_DIR in $(find $WORKING_DIR -type d -name ".git" | sed "s|/.git||g" | sort -u)
do
    pushd $GIT_DIR > /dev/null
    GIT_URL=$(git config --get remote.origin.url)
    GIT_COMMIT_HASH=$(git rev-parse HEAD)
    VERSION_MARK_PAYLOAD="$GIT_URL: $GIT_COMMIT_HASH"
    PAYLOAD+=("$VERSION_MARK_PAYLOAD")
    popd > /dev/null
done

PAYLOAD=$(IFS=$'\n'; echo "${PAYLOAD[*]}")
echo "$PAYLOAD" > $VERSION_FILE

echo "== Version Signature ==================="
echo "$PAYLOAD"
echo "========================================"

echo "[*] done $(basename $0)"