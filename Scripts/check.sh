#!/bin/bash

echo "[+] checking Xcode toolchain..."
if ! command -v xcodebuild &> /dev/null; then
    echo "[!] Xcode toolchain is required"
    exit 1
fi

echo "[+] checking system requirements..."
REQUIRED_PACKAGES=(
    git
    automake
    autoconf
    libtool
    wget

    # brew install coreutils
    nproc
    sha256sum
)
for REQUIRED_PACKAGE in ${REQUIRED_PACKAGES[@]}; do
    if ! command -v $REQUIRED_PACKAGE &> /dev/null; then
        echo "[!] $REQUIRED_PACKAGE is required"
        exit 1
    fi
done

echo "[*] done $(basename $0)"
