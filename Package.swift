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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4D44097E-93D2-43A7-91B7-8D315001C4D4/libimobiledevice.xcframework.zip", checksum: "3ed49d495c2ef5792db5f69dc190cba0d178a5284d1e9c1bcaaf1d3797a05a5a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4D44097E-93D2-43A7-91B7-8D315001C4D4/libimobiledevice_glue.xcframework.zip", checksum: "7fcaeedb6bd8568cd4e4258abdff3641b24b25b3e56a89204d5e041d892d0e6f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4D44097E-93D2-43A7-91B7-8D315001C4D4/libplist.xcframework.zip", checksum: "9a727c1f6de02774443ce04d38b9ac1d499a93e7df1a749a1e0599cdf78d5aef"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4D44097E-93D2-43A7-91B7-8D315001C4D4/libtatsu.xcframework.zip", checksum: "6f2c21d8661f8d265b3fba7c8a842f95e5d1e4375f875659cb2ef1a92e745123"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4D44097E-93D2-43A7-91B7-8D315001C4D4/libusbmuxd.xcframework.zip", checksum: "5f96d03e2649b4eb121369c263bc10724c94b8afe07dc0b213d9656ee71c5d4b"),
    ]
)

