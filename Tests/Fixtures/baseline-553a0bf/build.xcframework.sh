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
OUTPUT_DIR=$WORKING_DIR/build.frameworks
INPUT_DIR=$WORKING_DIR/build
LIBRARY_SEARCH_DIR=$WORKING_DIR/build/lib
HEADER_SEARCH_DIR=$WORKING_DIR/build.arm64/include

rm -rf $OUTPUT_DIR || true
mkdir -p $OUTPUT_DIR || true

declare -A FRAMEWORK_DEFS
FRAMEWORK_DEFS["libssl"]="openssl|libcrypto.a libssl.a"
FRAMEWORK_DEFS["libplist"]="plist/plist.h|libplist-2.0.a"
FRAMEWORK_DEFS["libtatsu"]="libtatsu/tatsu.h libtatsu/tss.h|libtatsu.a"
FRAMEWORK_DEFS["libimobiledevice_glue"]="libimobiledevice-glue|libimobiledevice-glue-1.0.a"
FRAMEWORK_DEFS["libusbmuxd"]="usbmuxd-proto.h usbmuxd.h|libusbmuxd-2.0.a"
FRAMEWORK_DEFS["libimobiledevice"]="libimobiledevice|libimobiledevice-1.0.a"

BUILD_SEQUENCE=(
    libssl
    libplist
    libtatsu
    libimobiledevice_glue
    libusbmuxd
    libimobiledevice
)

function build_xcframework() {
    local NAME=$1
    local HEADERS_STRING=$2
    local LIBRARIES_STRING=$3

    local TEMP_DIR="$TMPDIR$(uuidgen)"
    rm -rf $TEMP_DIR || true
    mkdir -p $TEMP_DIR || true

    local MERGED_LIBRARY=$TEMP_DIR/lib/$NAME.a
    mkdir -p $(dirname $MERGED_LIBRARY) || true
    local FULL_PATH_LIBRARIES=()

    IFS=' ' read -ra LIBRARIES <<< "$LIBRARIES_STRING"
    for LIBRARY in "${LIBRARIES[@]}"; do
        FULL_PATH_LIBRARIES+=("$LIBRARY_SEARCH_DIR/$LIBRARY")
    done
    echo "[*] merging into single library..."
    libtool -static -o $MERGED_LIBRARY "${FULL_PATH_LIBRARIES[@]}" 2> /dev/null # shut up

    local MERGED_HEADERS=$TEMP_DIR/include
    mkdir -p $MERGED_HEADERS || true
    IFS=' ' read -ra HEADERS <<< "$HEADERS_STRING"
    for HEADER in "${HEADERS[@]}"; do
        BASENAME=$(basename $HEADER)
        DIRNAME=${HEADER%$BASENAME}
        mkdir -p $MERGED_HEADERS/$DIRNAME || true
        cp -r $HEADER_SEARCH_DIR/$HEADER $MERGED_HEADERS/$HEADER
    done

    local TEMP_OUTPUT_XCFRAMEWORK=$TEMP_DIR/$NAME.xcframework
    local OUTPUT_XCFRAMEWORK=$OUTPUT_DIR/$NAME.xcframework
    rm -rf $OUTPUT_XCFRAMEWORK || true

    echo "[*] entering building context..."
    pushd $TEMP_DIR > /dev/null

    file lib/*.a

    echo "[*] generating module map..."
    echo "module $NAME {" > module.modulemap
    for HEADER_FILE in $(find ./include/ -name "*.h" | sort); do
        if [ -n "$(grep -E "This file is obsolete; please update your software." $HEADER_FILE)" ]; then
            echo "[*] removing obsolete header $HEADER_FILE"
            rm $HEADER_FILE
            continue
        fi
        if [[ $HEADER_FILE == "./include/"* ]]; then
            HEADER_FILE=${HEADER_FILE:11}
        fi
        echo "    header \"../$HEADER_FILE\"" >> module.modulemap
    done
    echo "    export *" >> module.modulemap
    echo "}" >> module.modulemap
    MODULE_MAP=$(pwd)/module.modulemap
    mkdir $MERGED_HEADERS/$NAME || true
    mv module.modulemap $MERGED_HEADERS/$NAME/module.modulemap

    echo "[*] building xcframework..."
    xcodebuild -create-xcframework \
        -library lib/*.a \
        -headers include \
        -output $TEMP_OUTPUT_XCFRAMEWORK

    echo "[*] copying to output directory..."
    cp -r *.xcframework $OUTPUT_XCFRAMEWORK

    popd > /dev/null
}

for KEY in "${BUILD_SEQUENCE[@]}"; do
    IFS='|' read -r HEADERS LIBRARIES <<< "${FRAMEWORK_DEFS[$KEY]}"
    build_xcframework "$KEY" "$HEADERS" "$LIBRARIES"
done

echo "[*] done $(basename $0)"
