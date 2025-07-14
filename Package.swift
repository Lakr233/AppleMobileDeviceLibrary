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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F7A87F73-7C48-419D-B722-E7CE9F0B96F3/libimobiledevice.xcframework.zip", checksum: "1b820001e1d1c52e87318d262b177f151763b726dbb3b5d8e7fb520cdc0b1c61"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F7A87F73-7C48-419D-B722-E7CE9F0B96F3/libimobiledevice_glue.xcframework.zip", checksum: "c73523dbbf16bafb7f8cbca66d7177386bcabe3237e6168af3ff7a39bb319b99"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F7A87F73-7C48-419D-B722-E7CE9F0B96F3/libplist.xcframework.zip", checksum: "6f95c6aeaae5f2b6a0faf2d2e70daa7749c23102a447b785c60121efc10ac0c1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F7A87F73-7C48-419D-B722-E7CE9F0B96F3/libtatsu.xcframework.zip", checksum: "04ade68494027ae349ee639c1d4f0bc4c3a2ba5acff16f55284cf5d472931abe"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F7A87F73-7C48-419D-B722-E7CE9F0B96F3/libusbmuxd.xcframework.zip", checksum: "152bd965f0fedb839e97f06a859f4f39696c6ff59ff340adb64859de9257e4b5"),
    ]
)

