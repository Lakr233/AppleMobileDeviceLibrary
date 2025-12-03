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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2D047F38-92D6-4CF1-A3F9-150AB99ADC48/libimobiledevice.xcframework.zip", checksum: "5645e7bc80c9657db630e4fdf6bc87150df72c7dc69ea9313c1b0e59be1d2d3e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2D047F38-92D6-4CF1-A3F9-150AB99ADC48/libimobiledevice_glue.xcframework.zip", checksum: "91f05aa0bdd6e687c0c94167e3a960224034dc8ca2cf0559410419724e7eb72d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2D047F38-92D6-4CF1-A3F9-150AB99ADC48/libplist.xcframework.zip", checksum: "69b92591ae125b58f9c5fee3848b4f0896a47f565d4baa0ea195063a86069534"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2D047F38-92D6-4CF1-A3F9-150AB99ADC48/libtatsu.xcframework.zip", checksum: "3d45c3fd82dbb3bf762e3c428910e1bea5c4e83d40d4ed64895f405d9d41aad1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2D047F38-92D6-4CF1-A3F9-150AB99ADC48/libusbmuxd.xcframework.zip", checksum: "70e34ffe0babf1ac0870883e33f1798ce974611820905fa8cd9ddf135d41b7a9"),
    ]
)

