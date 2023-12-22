#!/bin/bash

set -e

cd $(dirname $0)

if [ "$1" == "clean" ]; then
    git clean -fdx
fi

./check.sh
./build.universal.sh
./check.output.sh
./build.xcframework.sh
./build.spm.sh
./build.binpack.sh
./save.src.version.sh

echo "[*] done $(basename $0)"
