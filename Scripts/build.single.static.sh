#!/bin/bash

set -e

BUILD_PREFIX=$1 # install to this dir
WORKING_DIR=$2  # store repos
TARGET_ARCH=$3  # build for this arch

echo "[*] building for $TARGET_ARCH"

mkdir -p $BUILD_PREFIX || true
mkdir -p $WORKING_DIR || true

cd $WORKING_DIR

export PLATFORM="MacOSX"
export CROSS_TOP="$(xcode-select --print-path)/Platforms/$PLATFORM.platform/Developer"
export CROSS_SDK="$PLATFORM.sdk"
export SDKROOT="$CROSS_TOP/SDKs/$CROSS_SDK"
export ARCH=$TARGET_ARCH
export CC="$(xcrun --find clang) -arch $ARCH"

echo "[*] using compiler: $CC"
echo "[*] using SDK: $SDKROOT"

export PKG_CONFIG_PATH=$BUILD_PREFIX/lib/pkgconfig
export CFLAGS="-mmacosx-version-min=10.13 -arch $ARCH"
export CPPFLAGS="-mmacosx-version-min=10.13 -arch $ARCH"
export LDFLAGS="-mmacosx-version-min=10.13 -arch $ARCH"

git clone https://github.com/openssl/openssl || true
pushd openssl
git clean -fdx
git reset --hard
git checkout $(wget -q -O- https://api.github.com/repos/openssl/openssl/releases/latest | jq -r '.tag_name')
./config darwin64-$ARCH-cc --prefix=$BUILD_PREFIX -no-shared no-tests 
make -j$(nproc)
make install_sw

git clone https://github.com/libimobiledevice/libplist || true
pushd libplist
git clean -fdx
git reset --hard
./autogen.sh --prefix=$BUILD_PREFIX --enable-shared=no --enable-static=yes
make -j$(nproc)
make install
popd

git clone https://github.com/libimobiledevice/libtatsu || true
pushd libtatsu
git clean -fdx
git reset --hard
./autogen.sh --prefix=$BUILD_PREFIX --enable-shared=no --enable-static=yes
make -j$(nproc)
make install
popd

git clone https://github.com/libimobiledevice/libimobiledevice-glue || true
pushd libimobiledevice-glue
git clean -fdx
git reset --hard
./autogen.sh --prefix=$BUILD_PREFIX --enable-shared=no --enable-static=yes
make -j$(nproc)
make install
popd

git clone https://github.com/libimobiledevice/libusbmuxd || true
pushd libusbmuxd
git clean -fdx
git reset --hard
./autogen.sh --prefix=$BUILD_PREFIX --enable-shared=no --enable-static=yes
make -j$(nproc)
make install
popd

git clone https://github.com/libimobiledevice/libimobiledevice || true
pushd libimobiledevice
git clean -fdx
git reset --hard
./autogen.sh --prefix=$BUILD_PREFIX --enable-shared=no --enable-static=yes
make -j$(nproc)
make install
popd

echo "[*] done $(basename $0)"
