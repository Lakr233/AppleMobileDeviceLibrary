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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.80133B14-AF19-4C49-83C4-0FE3648832FB/libimobiledevice.xcframework.zip", checksum: "81c7a24e3e13f252b5f4f99fa0ea771854190b6823d5f70c4f9a65d4216a4748"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.80133B14-AF19-4C49-83C4-0FE3648832FB/libimobiledevice_glue.xcframework.zip", checksum: "3b5f124551e2a720d943fc913d47f3c5f38a08290a21863b555de5fc28ec9d3b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.80133B14-AF19-4C49-83C4-0FE3648832FB/libplist.xcframework.zip", checksum: "bb4b03e55b3d7d46359ce7c019f8895a198d7c79cc6cc81d9c250bda47660ac3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.80133B14-AF19-4C49-83C4-0FE3648832FB/libtatsu.xcframework.zip", checksum: "486ba8060d76c615b483a2c65c6a35bf1ce362c88ed04bfd4247438f56be4c40"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.80133B14-AF19-4C49-83C4-0FE3648832FB/libusbmuxd.xcframework.zip", checksum: "1fc8262d960a053720279469f85db5575d4868874b7f94da8ff3bb1feacd062a"),
    ]
)

