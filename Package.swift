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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BA2853DC-1387-45A1-AF9F-EE5C38FB6DAB/libimobiledevice.xcframework.zip", checksum: "6ce366c6a1cd27bce71654ec8653b7eda6ee578117e2f52b8c60ebca486c7001"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BA2853DC-1387-45A1-AF9F-EE5C38FB6DAB/libimobiledevice_glue.xcframework.zip", checksum: "ea6c2fc08ebd0e31858fc64897c420c02a64dd08605cb3e05576d3d3ed2feca0"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BA2853DC-1387-45A1-AF9F-EE5C38FB6DAB/libplist.xcframework.zip", checksum: "1eb25aa385db8f5572bcdb0fb030fa4891f3508ecebf4acc09e211d6d96748e3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BA2853DC-1387-45A1-AF9F-EE5C38FB6DAB/libtatsu.xcframework.zip", checksum: "3f7a3cc3bc9c28d708c8605467657ce26994a0b17a4a0cc6432fd3216ec9b41d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BA2853DC-1387-45A1-AF9F-EE5C38FB6DAB/libusbmuxd.xcframework.zip", checksum: "7c9f9d3583d4543aeb6a9bc90c5e96ab5e597f85485dd409ac9743810b685a14"),
    ]
)

