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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E6748B1E-507C-44E3-A2BE-8DAF1706322B/libimobiledevice.xcframework.zip", checksum: "bc9710d8090e292484e023a21a46b78703a64ecdd5f4b783ff3c6abab955ba51"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E6748B1E-507C-44E3-A2BE-8DAF1706322B/libimobiledevice_glue.xcframework.zip", checksum: "040b5b5ca02525e83c7fe251a41ad89e611030c8b179d7bc3a0b6fc730b8754e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E6748B1E-507C-44E3-A2BE-8DAF1706322B/libplist.xcframework.zip", checksum: "24c2f653b9660001114b8e5858a164be364ddcc572f3787bfd20f9abe64f9889"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E6748B1E-507C-44E3-A2BE-8DAF1706322B/libtatsu.xcframework.zip", checksum: "df0201021e213c5f6b6363b19d43b1b09aa8d53133d96e10f91744145026ed97"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E6748B1E-507C-44E3-A2BE-8DAF1706322B/libusbmuxd.xcframework.zip", checksum: "7b7316200c3b8da51252d1217581e015f5cfb1776fa5ede288b0373c2314ae9f"),
    ]
)

