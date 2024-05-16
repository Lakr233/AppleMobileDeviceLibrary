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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B6F9C8F2-E0C3-400B-8184-3DF90DC1FDFE/libimobiledevice.xcframework.zip", checksum: "ae0ea6efb910d4bff1798c0ebc8fdc415881ee409aaa9ce46c2cf0caea8e162b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B6F9C8F2-E0C3-400B-8184-3DF90DC1FDFE/libimobiledevice_glue.xcframework.zip", checksum: "da13c47dc9b61b1296707e1865d303360c79de6e0436abf53cb6f8a19ea9270a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B6F9C8F2-E0C3-400B-8184-3DF90DC1FDFE/libplist.xcframework.zip", checksum: "d0924583e8685583f2c540f5cb60a0cac1797149c409d6fd2a4f3d47a51f2068"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B6F9C8F2-E0C3-400B-8184-3DF90DC1FDFE/libusbmuxd.xcframework.zip", checksum: "c7263bb862e77dceb4cee7396807a0298b8c30abd6c8528cdee811dcfcb7fc73"),
    ]
)

