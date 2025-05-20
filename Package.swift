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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4A17DD81-8B4B-4126-88D0-A3ABAB1ACE72/libimobiledevice.xcframework.zip", checksum: "05d757699796ef0b3d803a82f7a3354fe7d27323a8291f3b74074b97c5958255"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4A17DD81-8B4B-4126-88D0-A3ABAB1ACE72/libimobiledevice_glue.xcframework.zip", checksum: "ac02d243e37ad2a66af9d2a7b4c82dfd44153c4629b67f5fc3a32f9b63a0ad73"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4A17DD81-8B4B-4126-88D0-A3ABAB1ACE72/libplist.xcframework.zip", checksum: "ac7e529fa6cb0bac686294b51aa5cd21ae1b864a692f92f3d79d0dd9d4c1c4d6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4A17DD81-8B4B-4126-88D0-A3ABAB1ACE72/libtatsu.xcframework.zip", checksum: "119deff893624d85329e5a12b80b7902b98730eab611dbc31a206a3456c37169"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4A17DD81-8B4B-4126-88D0-A3ABAB1ACE72/libusbmuxd.xcframework.zip", checksum: "4624c509f05df0b4581466975b4d55c4c87723869311a32a4946ded404d78a95"),
    ]
)

