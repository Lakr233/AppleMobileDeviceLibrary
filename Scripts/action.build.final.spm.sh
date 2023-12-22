#!/bin/bash

set -e

cd $(dirname $0)

while true; do
    if [ -d .git ]; then
        break
    fi
    cd ..
done

RELEASE_TAG=$1
REPO_NAME=$2

cp -f Package.swift.template Package.swift

sed -i "" "s|__REPO__|$REPO_NAME|g" Package.swift
sed -i "" "s|__TAG__|$RELEASE_TAG|g" Package.swift

sed -i "" "s|__CHECKSUM_libimobiledevice__|$(shasum -a 256 ./libimobiledevice.xcframework.zip | awk '{print $1}')|g" Package.swift
sed -i "" "s|__CHECKSUM_libimobiledevice_glue__|$(shasum -a 256 ./libimobiledevice_glue.xcframework.zip | awk '{print $1}')|g" Package.swift
sed -i "" "s|__CHECKSUM_libplist__|$(shasum -a 256 ./libplist.xcframework.zip | awk '{print $1}')|g" Package.swift
sed -i "" "s|__CHECKSUM_libssl__|$(shasum -a 256 ./libssl.xcframework.zip | awk '{print $1}')|g" Package.swift
sed -i "" "s|__CHECKSUM_libusbmuxd__|$(shasum -a 256 ./libusbmuxd.xcframework.zip | awk '{print $1}')|g" Package.swift

echo "[*] Package Ready!"

cat Package.swift
