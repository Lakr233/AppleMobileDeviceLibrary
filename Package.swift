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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E559A963-2FE1-448D-BC74-C9A141CBFC5B/libimobiledevice.xcframework.zip", checksum: "64edd20aa5db2c21d8d90f5efa847296564f0bcb75b73087fa6392d9de874127"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E559A963-2FE1-448D-BC74-C9A141CBFC5B/libimobiledevice_glue.xcframework.zip", checksum: "262a7956bd1e9b96d0534d95215ea2866e872bec196ad1bc95013d04dbc978f0"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E559A963-2FE1-448D-BC74-C9A141CBFC5B/libplist.xcframework.zip", checksum: "26a8e415c1562ebbb340f57084f85684ad3cf3fab4f68816bc00ab6a71e21bcd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E559A963-2FE1-448D-BC74-C9A141CBFC5B/libtatsu.xcframework.zip", checksum: "48a580ed24376f0001faf93fddf6b29dee0e71b9616d21a8f0a25aa5dfbdd60c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E559A963-2FE1-448D-BC74-C9A141CBFC5B/libusbmuxd.xcframework.zip", checksum: "dabafed83e0d1d3fafde3b8837321b6a1ac8bc0e97164ebb8f2fe8ac5838b84d"),
    ]
)

