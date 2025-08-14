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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.00E7E92A-EAF2-4CA6-9761-79AF85C50542/libimobiledevice.xcframework.zip", checksum: "4071f254ce5429d5ec02d08003700e8cc75f5e50c50865df29e2cb2d222008cb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.00E7E92A-EAF2-4CA6-9761-79AF85C50542/libimobiledevice_glue.xcframework.zip", checksum: "38e88ffd152b3fe56a9c6b7c64c6d5e123cac8ab1318f86cc4d2eb0d20b260d9"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.00E7E92A-EAF2-4CA6-9761-79AF85C50542/libplist.xcframework.zip", checksum: "b995cc381338a5ff2c74ed0c8a0ef10499b9b2e2f8e7ee860e38f4670fabc54b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.00E7E92A-EAF2-4CA6-9761-79AF85C50542/libtatsu.xcframework.zip", checksum: "cc71944c0a3117efcd12074c1cde39e6af9eaed63ddb81405ebe9a673ae67fa1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.00E7E92A-EAF2-4CA6-9761-79AF85C50542/libusbmuxd.xcframework.zip", checksum: "7e1d261e87ab7df363801d5d8256869941d2605c6a3d074e9c8a497e4d122321"),
    ]
)

