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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A2ADC49D-BFFD-48F1-AEF0-B92AE51A8086/libimobiledevice.xcframework.zip", checksum: "ae15e28e4a80f46f1d84aed395ffe89d339c0db9c31d7e0bbef86fd3950d4ed4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A2ADC49D-BFFD-48F1-AEF0-B92AE51A8086/libimobiledevice_glue.xcframework.zip", checksum: "b75b301152b0973d2ce894595837207690c4a4befbb688a8415b56ba2d197812"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A2ADC49D-BFFD-48F1-AEF0-B92AE51A8086/libplist.xcframework.zip", checksum: "f0d7fe2e69b3f6ce7e2b14cf806e9b072a0de4898c9fd807638864475578ef1d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A2ADC49D-BFFD-48F1-AEF0-B92AE51A8086/libtatsu.xcframework.zip", checksum: "f8926c857e74b8b32ee56b125a15d9241889fe7f06147d85608a1fa9c21e0046"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A2ADC49D-BFFD-48F1-AEF0-B92AE51A8086/libusbmuxd.xcframework.zip", checksum: "1a0653565568dea751e96584f44fbee4241105db23b2bb02da0717a4774e2256"),
    ]
)

