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

mkdir -p $WORKING_DIR || true
cd $WORKING_DIR

TARGET_ARCHS=(
    arm64
    x86_64
)

OUTPUT_DIR=$WORKING_DIR/build
OUTPUT_ERROR_LIST=()
OUTPUT_PASSED_LIST=()

REQUIRED_MIME=(
    application/x-mach-binary
    application/x-archive
)
for FILE in $(find $OUTPUT_DIR -type f)
do
    if [ -z "$(file -b --mime-type $FILE | grep -E "$(IFS="|"; echo "${REQUIRED_MIME[*]}")")" ]; then
        continue
    fi
    ERROR_FOUND=false
    for TARGET_ARCH in ${TARGET_ARCHS[@]}
    do
        if [ -z "$(lipo -info $FILE | grep -E "$TARGET_ARCH")" ]; then
            OUTPUT_ERROR_LIST+=($FILE)
            ERROR_FOUND=true
        fi
    done
    if [ $ERROR_FOUND = false ]; then
        OUTPUT_PASSED_LIST+=($FILE)
    fi
done

for FILE in ${OUTPUT_PASSED_LIST[@]}
do
    echo "[*] check passed $FILE"
done

if [ ${#OUTPUT_ERROR_LIST[@]} -ne 0 ]; then
    for FILE in ${OUTPUT_ERROR_LIST[@]}
    do
        echo "[!] check failed $FILE"
    done
    exit 1
fi

if [ ${#OUTPUT_PASSED_LIST[@]} -eq 0 ]; then
    echo "[!] no output found"
    exit 1
fi

echo "[*] done $(basename $0)"

exit 0