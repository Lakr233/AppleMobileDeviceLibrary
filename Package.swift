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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.36DE39AA-890B-4235-AD77-F55DD26341A0/libimobiledevice.xcframework.zip", checksum: "f76699e61b1310145a238225151e26f4b0e1839dc8a944a8be4bb7257e114650"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.36DE39AA-890B-4235-AD77-F55DD26341A0/libimobiledevice_glue.xcframework.zip", checksum: "99be778228412001a90a19621e47a72984c4fb88544449720ab49189b9fa0d64"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.36DE39AA-890B-4235-AD77-F55DD26341A0/libplist.xcframework.zip", checksum: "a999e2d4766d456ed2b2c2dac95a91872cae4712f76dd3613e96d9940c0e1f3a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.36DE39AA-890B-4235-AD77-F55DD26341A0/libtatsu.xcframework.zip", checksum: "7b9a7079943a87db57bd1876d7cebc6f435f7de34fc5d816b8379738222489a4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.36DE39AA-890B-4235-AD77-F55DD26341A0/libusbmuxd.xcframework.zip", checksum: "85dee15d54bcbe328b7f887421dca412e49800b6aff150c965fd3ab205358b57"),
    ]
)

