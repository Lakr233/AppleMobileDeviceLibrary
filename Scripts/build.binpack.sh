#!/opt/homebrew/bin/bash

set -e

cd $(dirname $0)
SCRIPT_DIR=$(pwd)

while true; do
    if [ -d .git ]; then
        break
    fi
    cd ..
done

WORKING_DIR=$(pwd)/build
OUTPUT_DIR=$WORKING_DIR/build.binpack
INPUT_DIR=$WORKING_DIR/build/bin

rm -rf $OUTPUT_DIR || true
mkdir -p $OUTPUT_DIR || true
"$SCRIPT_DIR/payload.notices.sh" copy "$WORKING_DIR/build" "$OUTPUT_DIR"

pushd $INPUT_DIR > /dev/null

tar -cvf "$OUTPUT_DIR/binpack.tar" idevice* iproxy inetcat afcclient -C "$OUTPUT_DIR" Licenses
"$SCRIPT_DIR/payload.notices.sh" verify-tar "$OUTPUT_DIR/binpack.tar"

popd > /dev/null

echo "[*] done $(basename $0)"
