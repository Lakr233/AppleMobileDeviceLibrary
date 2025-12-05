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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.951713F0-D5C8-4F68-A363-AF900B9EFBAA/libimobiledevice.xcframework.zip", checksum: "329f3e8769a61e3dcc04aeea10c65ffd45bd7855d38f6155ec44e2378173ee9f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.951713F0-D5C8-4F68-A363-AF900B9EFBAA/libimobiledevice_glue.xcframework.zip", checksum: "a0113d1f65be350cd4cf265ec7585c1ad8c22881e643582bca7258a140a16673"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.951713F0-D5C8-4F68-A363-AF900B9EFBAA/libplist.xcframework.zip", checksum: "1f8b5a68803130c954f18fb6457fb2738b518156088bc9c47a002c04431aa12f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.951713F0-D5C8-4F68-A363-AF900B9EFBAA/libtatsu.xcframework.zip", checksum: "289768ca3c942e19ce318ed6b2f8bc681252c3237036c30fb3b8154a5f4c227e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.951713F0-D5C8-4F68-A363-AF900B9EFBAA/libusbmuxd.xcframework.zip", checksum: "f03b449d87ef5e97e437834cde99a8fc8ee39a1859958fd8b897e33c9b1f1dff"),
    ]
)

