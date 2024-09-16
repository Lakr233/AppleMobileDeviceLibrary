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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.296E01BE-F46A-4FE9-98B4-4A9F82B46836/libimobiledevice.xcframework.zip", checksum: "a40b54294e74608e79dc2e458141c381ccfc0a5e8bccbec9d29827923b098f2a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.296E01BE-F46A-4FE9-98B4-4A9F82B46836/libimobiledevice_glue.xcframework.zip", checksum: "4faa5ca662f64a65b4b3849b27aeed6c0ba490092c0104c4ef5993bb0ced28f4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.296E01BE-F46A-4FE9-98B4-4A9F82B46836/libplist.xcframework.zip", checksum: "fb57c32f778ed875f4140271883706dd807d37bfebd2a1e7784bc174bf128dcf"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.296E01BE-F46A-4FE9-98B4-4A9F82B46836/libtatsu.xcframework.zip", checksum: "f5726726d42793c0eb5b506f068f1f0565d103ad0e33b5e9d889ac3637e8885c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.296E01BE-F46A-4FE9-98B4-4A9F82B46836/libusbmuxd.xcframework.zip", checksum: "a08ad50c70654e5d89e4b6ee366e9708830dffa561830a62a68b2c07f724bf39"),
    ]
)

