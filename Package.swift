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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.34B60E5A-9342-4FB9-AA18-9E2237A28F4D/libimobiledevice.xcframework.zip", checksum: "ab520c711900e98e46e12b0a204276ebb442beabd8d5448dd89fdb8e3df8e44f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.34B60E5A-9342-4FB9-AA18-9E2237A28F4D/libimobiledevice_glue.xcframework.zip", checksum: "ce878fb703691a9481fba8c9eec3ba6dd7b25c66a2f0da9dd9991f1029a0b8ba"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.34B60E5A-9342-4FB9-AA18-9E2237A28F4D/libplist.xcframework.zip", checksum: "44873e030c52f4bbbc762167a92bc881e892aebd357f50a4689e30e369743123"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.34B60E5A-9342-4FB9-AA18-9E2237A28F4D/libtatsu.xcframework.zip", checksum: "4465c5eccd8344f4a55730c52639dc07842559c998a0edded05fac3fee653f10"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.34B60E5A-9342-4FB9-AA18-9E2237A28F4D/libusbmuxd.xcframework.zip", checksum: "aaed62930d8f95c0779182b13c08334ab47ceca971d8989e0e72f2e23dbe0f73"),
    ]
)

