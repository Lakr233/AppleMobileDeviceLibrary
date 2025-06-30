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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E9B4FC85-DA9B-4816-907C-7A2EC29CB6D8/libimobiledevice.xcframework.zip", checksum: "d12eeeb1be4eb0fb20bf98a9dde0245621835a2e21e6be9df85e83d917714ffb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E9B4FC85-DA9B-4816-907C-7A2EC29CB6D8/libimobiledevice_glue.xcframework.zip", checksum: "e8fa402ff2096519be45937513e4bd959cd7f5858b17d094806f2268e65a2deb"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E9B4FC85-DA9B-4816-907C-7A2EC29CB6D8/libplist.xcframework.zip", checksum: "5ba8da61833b010eb3ff08c7798e7a3f0c8a031e724b8709d18d434ad2b12dba"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E9B4FC85-DA9B-4816-907C-7A2EC29CB6D8/libtatsu.xcframework.zip", checksum: "c45b14d03a4ed73e6fd220dbe3bb6d2291d61ff27bab09a88e015237155f5fd6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E9B4FC85-DA9B-4816-907C-7A2EC29CB6D8/libusbmuxd.xcframework.zip", checksum: "5a3854074222b12bd32a64934198eaf7a636183e17251921ad8046c620b2a083"),
    ]
)

