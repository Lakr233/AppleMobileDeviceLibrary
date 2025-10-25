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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.33937DE0-D5F5-4866-9FBE-E860487F38A3/libimobiledevice.xcframework.zip", checksum: "17a63e2a2d4a975db29a4d9fad42ec4637e426048881baec4b0ffdab78fffe92"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.33937DE0-D5F5-4866-9FBE-E860487F38A3/libimobiledevice_glue.xcframework.zip", checksum: "6ad96b0a55b03124e56cc19c523354e6aa8070c8fcd01af8a517debcb73a6f97"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.33937DE0-D5F5-4866-9FBE-E860487F38A3/libplist.xcframework.zip", checksum: "5f443e9036aa6122401ef16c5f585c8aaaf58de050a72fe8b1ff63c2c07c5877"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.33937DE0-D5F5-4866-9FBE-E860487F38A3/libtatsu.xcframework.zip", checksum: "b4ce66b7e4a884f58ad6c372b45429e1c01b24fd42f42f5a839439092ebfc306"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.33937DE0-D5F5-4866-9FBE-E860487F38A3/libusbmuxd.xcframework.zip", checksum: "a7c603bf0b68a95df5483ea1cef994b41e3b3780d74a7aa5000337118e1ad79a"),
    ]
)

