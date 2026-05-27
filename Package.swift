// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AppleMobileDeviceLibrary",
    platforms: [
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "AppleMobileDeviceLibrary",
            targets: ["AppleMobileDeviceLibrary"]
        ),
    ],
    dependencies: [
        .package(name: "OpenSSL", url: "https://github.com/Lakr233/openssl-spm.git", from: "3.2.0"),
    ],
    targets: [
        .target(name: "AppleMobileDeviceLibrary", dependencies: [
            "libimobiledevice",
            "libimobiledevice_glue",
            "libplist",
            "libusbmuxd",
            "libtatsu",
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E362A2C2-1978-4E52-9CF8-6EF73D59F8BD/libimobiledevice.xcframework.zip", checksum: "c42bf17e1563748440f2393d79cfa3f42958559389bdbce47199827c2249f333"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E362A2C2-1978-4E52-9CF8-6EF73D59F8BD/libimobiledevice_glue.xcframework.zip", checksum: "e8d9f350c7c2af71fbb8b4e3dd9195c6382740f834ee63687f90b52b5d126023"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E362A2C2-1978-4E52-9CF8-6EF73D59F8BD/libplist.xcframework.zip", checksum: "b1b8a61176e82d1a22c33dc5487f461d906b6d51cd0cb004f9a1cbcd1ecc26dd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E362A2C2-1978-4E52-9CF8-6EF73D59F8BD/libtatsu.xcframework.zip", checksum: "948b4875bc6466ed8b408a32294d8e8d3ba8f1553ac238b1e529d4f9ebb66b4d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E362A2C2-1978-4E52-9CF8-6EF73D59F8BD/libusbmuxd.xcframework.zip", checksum: "eb9ce9a4e913afe2fbf025cfa084b4f3e14d8db63552efdfd1858f3402545860"),
    ]
)

