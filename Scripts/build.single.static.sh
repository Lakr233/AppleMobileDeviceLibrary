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
git clean -fdx -f
git reset --hard
git checkout $(wget -q -O- https://api.github.com/repos/openssl/openssl/releases/latest | jq -r '.tag_name')
./config darwin64-$ARCH-cc --prefix=$BUILD_PREFIX -no-shared no-tests 
make -j$(nproc)
make install_sw
popd

git clone https://github.com/nih-at/libzip || true
pushd libzip
git clean -fdx -f
git reset --hard
git checkout $(wget -q -O- https://api.github.com/repos/nih-at/libzip/releases/latest | jq -r '.tag_name')
mkdir build
pushd build
cmake .. \
    -DBUILD_SHARED_LIBS=OFF \
    -DCMAKE_INSTALL_PREFIX=$BUILD_PREFIX \
    -DENABLE_ZSTD=OFF \
    -DBUILD_TOOLS=OFF \
    -DBUILD_REGRESS=OFF \
    -DBUILD_OSSFUZZ=OFF \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_DOC=OFF \
    -DCMAKE_OSX_ARCHITECTURES=$ARCH \
    -DCMAKE_SYSTEM_NAME=Darwin
make -j$(nproc)
make install
popd
popd

GIT_REPOSITORY_LIST=(
    "https://github.com/libimobiledevice/libplist"
    "https://github.com/libimobiledevice/libtatsu"
    "https://github.com/libimobiledevice/libimobiledevice-glue"
    "https://github.com/libimobiledevice/libusbmuxd"
    "https://github.com/libimobiledevice/libimobiledevice"
    "https://github.com/libimobiledevice/ideviceinstaller"
    "https://github.com/libimobiledevice/libideviceactivation"
)

for GIT_REPOSITORY in "${GIT_REPOSITORY_LIST[@]}"; do
    DIRNAME=$(basename $GIT_REPOSITORY)
    git clone $GIT_REPOSITORY $DIRNAME || true
    pushd $DIRNAME
    git clean -fdx -f
    git reset --hard
    ./autogen.sh --prefix=$BUILD_PREFIX --enable-shared=no --enable-static=yes
    make -j$(nproc)
    make install
    popd
done

echo "[*] done $(basename $0)"
