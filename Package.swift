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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DFA6A41A-01C6-4F71-8476-A157DC10FF25/libimobiledevice.xcframework.zip", checksum: "4c152ccf664a3f396e781db6170c8f87214cd5f62f348458b49d1388bb2b320a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DFA6A41A-01C6-4F71-8476-A157DC10FF25/libimobiledevice_glue.xcframework.zip", checksum: "aa5a7d914bd09382f1fc91d17cc0d7747d3fd30fdffdbb1b5eb1d4c23a8ab6aa"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DFA6A41A-01C6-4F71-8476-A157DC10FF25/libplist.xcframework.zip", checksum: "8fab332dcb11c9b8e65fdb35b523948371487cc0c5958e08135ca5611df6d33f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DFA6A41A-01C6-4F71-8476-A157DC10FF25/libtatsu.xcframework.zip", checksum: "f4de23484ca3c80b3baab833d3de1407a37c0e0d17d289b451635aec4f945197"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DFA6A41A-01C6-4F71-8476-A157DC10FF25/libusbmuxd.xcframework.zip", checksum: "4f4639961c58bb22b235174833cc6fedf4bdfe08aa08d44010ebc3c1a64ff31d"),
    ]
)

