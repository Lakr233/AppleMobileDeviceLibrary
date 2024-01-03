#!/bin/bash

set -e

REUIQRED_TOOL=(
    "swift"
    "zip"
    "swiftformat"
)
for TOOL in ${REUIQRED_TOOL[@]}; do
    if ! command -v $TOOL &> /dev/null; then
        echo "error: $TOOL is required"
        exit 1
    fi
done

cd $(dirname $0)
SCRIPT_DIR=$(pwd)

while true; do
    if [ -d .git ]; then
        break
    fi
    cd ..
done

WORKING_DIR=$(pwd)/build
OUTPUT_DIR=$WORKING_DIR/build.spm
INPUT_DIR=$WORKING_DIR/build.frameworks

LIBRARY_NAME="AppleMobileDeviceLibrary"


rm -rf $OUTPUT_DIR || true
mkdir -p $OUTPUT_DIR || true

cd $OUTPUT_DIR

echo "[*] generating Package.swift..."

PACKAGE_TEMPLATE=$(cat <<EOF
// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "__LIBRARY_NAME__",
    platforms: [
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "__LIBRARY_NAME__",
            targets: ["__LIBRARY_NAME__"]
        ),
    ],
    targets: [
        .target(name: "__LIBRARY_NAME__", dependencies: [
            __REPLACED_DEPENDENCIES__
        ]),
        __REPLACED_BINARY_TARGETS__
    ]
)
EOF
)
PACKAGE_TEMPLATE=$(sed -e "s/__LIBRARY_NAME__/$LIBRARY_NAME/g" <<< "$PACKAGE_TEMPLATE")

mkdir BinaryTargets
echo "[*] sending frameworks to BinaryTargets..."
pushd BinaryTargets > /dev/null

for XCFRAMEWORK in $INPUT_DIR/*.xcframework; do
    cp -r $XCFRAMEWORK .
    zip -r9 $(basename $XCFRAMEWORK).zip $(basename $XCFRAMEWORK) > /dev/null
    rm -rf $(basename $XCFRAMEWORK)
done

popd

echo "[*] process Package.swift..."
ls -la BinaryTargets

BINARY_TARGETS=()
BINARY_TARGET_TEMPLATE=".binaryTarget(name: \"__NAME__\", path: \"__PATH__\"),"
DEPENDENCIES=()

for XCFRAMEWORK in BinaryTargets/*.zip; do
    FRAMEWORK_NAME=$(basename $XCFRAMEWORK .zip)
    EMBEDDED_NAME=$(basename $FRAMEWORK_NAME .xcframework)
    RELATIVE_PATH=BinaryTargets/$(basename $XCFRAMEWORK)

    DEF=$BINARY_TARGET_TEMPLATE
    DEF=${DEF/__NAME__/$EMBEDDED_NAME}
    DEF=${DEF/__PATH__/$RELATIVE_PATH}

    BINARY_TARGETS+=("$DEF")
    DEPENDENCIES+=("\"$EMBEDDED_NAME\",")
done

echo "[*] sending to Package.swift..."
PACKAGE_TEMPLATE=${PACKAGE_TEMPLATE/__REPLACED_BINARY_TARGETS__/$(IFS=$'\n'; echo "${BINARY_TARGETS[*]}")}
PACKAGE_TEMPLATE=${PACKAGE_TEMPLATE/__REPLACED_DEPENDENCIES__/$(IFS=$'\n'; echo "${DEPENDENCIES[*]}")}
echo "$PACKAGE_TEMPLATE" > Package.swift

mkdir -p Sources/$LIBRARY_NAME
STUB_SWIFT_FILE=$(cat <<EOF
//
//  __LIBRARY_NAME__.swift
//  __LIBRARY_NAME__
//
//  Created by __BOT_NAME__ on __DATE__.
//
EOF
)
STUB_SWIFT_FILE=$(sed -e "s/__LIBRARY_NAME__/$LIBRARY_NAME/g" <<< "$STUB_SWIFT_FILE")
STUB_SWIFT_FILE=${STUB_SWIFT_FILE/__BOT_NAME__/$(whoami)}
STUB_SWIFT_FILE=${STUB_SWIFT_FILE/__DATE__/$(date "+%Y-%m-%d")}
STUB_SWIFT_FILE+=$'\n'
STUB_SWIFT_FILE+=$'\n'
for XCFRAMEWORK in BinaryTargets/*.zip; do
    FRAMEWORK_NAME=$(basename $XCFRAMEWORK .zip)
    EMBEDDED_NAME=$(basename $FRAMEWORK_NAME .xcframework)

    STUB_SWIFT_FILE+="@_exported import $EMBEDDED_NAME"
    STUB_SWIFT_FILE+=$'\n'
done

echo "$STUB_SWIFT_FILE" > Sources/$LIBRARY_NAME/$LIBRARY_NAME.swift

swiftformat . --swiftversion 5.3

echo "[*] done $(basename $0)"
