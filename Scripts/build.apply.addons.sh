#!/bin/bash

set -e

FROM_DIR=$1
TO_DIR=$2

if [ ! -d "$FROM_DIR" ]; then
    echo "[*] nothing to do"
    exit 0
fi


FILE_LIST=()
for FILE in $(find $FROM_DIR -type f); do
    RELATIVE_PATH=${FILE#$FROM_DIR}
    RELATIVE_PATH=${RELATIVE_PATH#/}
    FILE_LIST+=("$RELATIVE_PATH")
    echo "[*] using addon $RELATIVE_PATH"
done

for FILE in "${FILE_LIST[@]}"; do
    if [ ! -f "$TO_DIR/$FILE" ]; then
        echo "[?] $FILE not found in $TO_DIR"
        exit 1
    fi

    echo "[*] adding content of $FILE to $TO_DIR/$FILE"
    cat $FROM_DIR/$FILE >> $TO_DIR/$FILE
done

echo "[*] done $(basename $0)"