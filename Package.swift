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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AD0378FE-D84E-4C06-8F05-42AC8FDE0701/libimobiledevice.xcframework.zip", checksum: "f78bc2e094d019f4a2f85b35c8ded2b2f3b16774fb503b4a122f8e03a7d39fb4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AD0378FE-D84E-4C06-8F05-42AC8FDE0701/libimobiledevice_glue.xcframework.zip", checksum: "407c9f8d7c63d8dac87f4ddfa7cdd084384cdf849e00ee9d62744c91c72802f5"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AD0378FE-D84E-4C06-8F05-42AC8FDE0701/libplist.xcframework.zip", checksum: "e4d78be63bb8d2e8f129d7d8d1d92f9da2d9f9d0e6bf6aac8a83095ea5c60e5a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AD0378FE-D84E-4C06-8F05-42AC8FDE0701/libtatsu.xcframework.zip", checksum: "49996aee4809d882e17199e6f8e5195d4d161c52ed62a8077ffbb5badba84f7d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AD0378FE-D84E-4C06-8F05-42AC8FDE0701/libusbmuxd.xcframework.zip", checksum: "48f9e06c42b775e55fa40744cd7382b37f865563e90b5333068422d67941981d"),
    ]
)

