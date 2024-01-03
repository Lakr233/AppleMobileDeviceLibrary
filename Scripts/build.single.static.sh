#!/bin/bash

set -e

BUILD_PREFIX=$1 # install to this dir
WORKING_DIR=$2  # store repos

mkdir -p $BUILD_PREFIX || true
mkdir -p $WORKING_DIR || true

while true; do
    if [ -d .git ]; then
        break
    fi
    cd ..
done
ROOT_DIR=$(pwd)

cd $WORKING_DIR

export PKG_CONFIG_PATH=$BUILD_PREFIX/lib/pkgconfig

function prepare_repo() {
    git clean -fdx -f -q
    git reset --hard -q

    TAG=$(git describe --tags --exact-match HEAD 2> /dev/null || git rev-parse --short HEAD)
    echo "[*] building $(basename $PWD): $TAG" >&2

    $ROOT_DIR/Scripts/build.apply.addons.sh $ROOT_DIR/Addons/$(basename $PWD) $PWD
}

if [ ! -d "$WORKING_DIR/openssl" ]; then
    git clone https://github.com/openssl/openssl
fi
pushd openssl
git checkout $(wget -q -O- https://api.github.com/repos/openssl/openssl/releases/latest | jq -r '.tag_name') -q
prepare_repo
./config --prefix=$BUILD_PREFIX -no-shared no-tests 1> /dev/null
make -j$(nproc)
make install_sw
popd

if [ ! -d "$WORKING_DIR/libplist" ]; then
    git clone https://github.com/libimobiledevice/libplist || true
fi
pushd libplist
prepare_repo
./autogen.sh --prefix=$BUILD_PREFIX --enable-shared=no --enable-static=yes
make -j$(nproc)
make install
popd

if [ ! -d "$WORKING_DIR/libimobiledevice-glue" ]; then
    git clone https://github.com/libimobiledevice/libimobiledevice-glue || true
fi
pushd libimobiledevice-glue
prepare_repo
./autogen.sh --prefix=$BUILD_PREFIX --enable-shared=no --enable-static=yes
make -j$(nproc)
make install
popd

if [ ! -d "$WORKING_DIR/libusbmuxd" ]; then
    git clone https://github.com/libimobiledevice/libusbmuxd || true
fi
pushd libusbmuxd
prepare_repo
./autogen.sh --prefix=$BUILD_PREFIX --enable-shared=no --enable-static=yes
make -j$(nproc)
make install
popd

if [ ! -d "$WORKING_DIR/libimobiledevice" ]; then
    git clone https://github.com/libimobiledevice/libimobiledevice || true
fi
pushd libimobiledevice
prepare_repo
./autogen.sh --prefix=$BUILD_PREFIX --enable-shared=no --enable-static=yes
make -j$(nproc)
make install
popd

echo "[*] done $(basename $0)"
