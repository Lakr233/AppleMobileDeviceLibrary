#!/bin/bash

set -e

cd $(dirname $0)
SCRIPT_DIR=$(pwd)

./check.sh

while true
do
    if [ -d .git ]; then
        break
    fi
    cd ..
done
WORKING_DIR=$(pwd)/build

mkdir -p $WORKING_DIR || true
cd $WORKING_DIR

TARGET_ARCHS=(
    arm64
    x86_64
)

for TARGET_ARCH in ${TARGET_ARCHS[@]}
do
    PREFIX=$WORKING_DIR/build.$TARGET_ARCH
    rm -rf $PREFIX || true
    mkdir -p $PREFIX || true
    arch -$TARGET_ARCH $SCRIPT_DIR/build.single.static.sh $PREFIX $WORKING_DIR 1>/dev/null
done

OUTPUT_DIR=$WORKING_DIR/build
rm -rf $OUTPUT_DIR || true
mkdir -p $OUTPUT_DIR || true

REQUIRED_MIME=(
    application/x-mach-binary
    application/x-archive
)
BUILDER_ANCHOR_PREFIX=$WORKING_DIR/build.${TARGET_ARCHS[0]}
for FILE in $(find $BUILDER_ANCHOR_PREFIX -type f)
do
    if [ -z "$(file -b --mime-type $FILE | grep -E "$(IFS="|"; echo "${REQUIRED_MIME[*]}")")" ]; then
        continue
    fi
    RELATIVE_PATH=$(echo $FILE | sed "s|$BUILDER_ANCHOR_PREFIX||g")

    BINARY_LIST=()
    for TARGET_ARCH in ${TARGET_ARCHS[@]}
    do
        ARCH_PREFIX=$WORKING_DIR/build.$TARGET_ARCH
        BINARY_LIST+=($ARCH_PREFIX$RELATIVE_PATH)
    done

    mkdir -p $(dirname $OUTPUT_DIR$RELATIVE_PATH) || true
    rm -rf $OUTPUT_DIR$RELATIVE_PATH || true
    lipo -create ${BINARY_LIST[@]} -output $OUTPUT_DIR$RELATIVE_PATH
done

echo "[*] done $(basename $0)"
