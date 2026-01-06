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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.485FE2AE-8E09-429B-BBA6-FA7C0E65EA11/libimobiledevice.xcframework.zip", checksum: "eb00fbbbcb8e7b9727f40a753c7ff4b8fc39e8d62a1158f077272c67ce13be74"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.485FE2AE-8E09-429B-BBA6-FA7C0E65EA11/libimobiledevice_glue.xcframework.zip", checksum: "16793eab38ef896e3e97aacb958c9a4e7a1632bb3eb6302afa8d5f15a120e2fd"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.485FE2AE-8E09-429B-BBA6-FA7C0E65EA11/libplist.xcframework.zip", checksum: "151cf8ab53aabbdf03ad67c1f82a7581cabf28c3ad771c21caf5f6532b7a7f84"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.485FE2AE-8E09-429B-BBA6-FA7C0E65EA11/libtatsu.xcframework.zip", checksum: "2e1b6d3f39513a2407d24477b41639ae49d6233b94b00a12a6bfe5d5379859f9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.485FE2AE-8E09-429B-BBA6-FA7C0E65EA11/libusbmuxd.xcframework.zip", checksum: "5cd50ef24f8f610383bc8b1a089827fffa5db084ccb4e73451f40ec593924790"),
    ]
)

