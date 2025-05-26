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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E0D5D8C2-47A1-4906-A5DA-8BF54648E92A/libimobiledevice.xcframework.zip", checksum: "92ac437c0a65eaac0a090ca2b74c123795f11cefa0dee7f6a50c4120bc521751"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E0D5D8C2-47A1-4906-A5DA-8BF54648E92A/libimobiledevice_glue.xcframework.zip", checksum: "fd898899c1ae914e3a3d752e09ee0c8c16ba8c3270e38066eb299ff31c66fcc2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E0D5D8C2-47A1-4906-A5DA-8BF54648E92A/libplist.xcframework.zip", checksum: "cc56c05d3960471e0fd474dee8d9f8877a2b2f8b00e07e74fbf5a01e444cebe3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E0D5D8C2-47A1-4906-A5DA-8BF54648E92A/libtatsu.xcframework.zip", checksum: "990b79acc3123a2048e896d37ddd1e1655da4bd843e0805d503f2123a649dc06"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E0D5D8C2-47A1-4906-A5DA-8BF54648E92A/libusbmuxd.xcframework.zip", checksum: "3fecc2c751ab7b8ef1ca50462d45d603a972101c24ba33e4d89cc644800d2374"),
    ]
)

