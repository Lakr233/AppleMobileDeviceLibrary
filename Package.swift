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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.26C005D5-C937-4D47-B4E5-CDFBD22CDE67/libimobiledevice.xcframework.zip", checksum: "06f08d08a712c7d147526841bc1ce18eb797ab316fc480b5d15af524cf022668"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.26C005D5-C937-4D47-B4E5-CDFBD22CDE67/libimobiledevice_glue.xcframework.zip", checksum: "00dec71a89caa6cf2897596455d55d5d0c21c686c265d2b7c399548c8751702c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.26C005D5-C937-4D47-B4E5-CDFBD22CDE67/libplist.xcframework.zip", checksum: "a87b7db21b88f9e176a740e2c2fb84eac8006a2cf93b6618a0589b814835f6e0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.26C005D5-C937-4D47-B4E5-CDFBD22CDE67/libtatsu.xcframework.zip", checksum: "7b99f15c1d6994b3735917a2d24428ba30286bab1d99d51549865f95f0aa1a35"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.26C005D5-C937-4D47-B4E5-CDFBD22CDE67/libusbmuxd.xcframework.zip", checksum: "76bc1d8ac6a6a819021a274d623577c3eec6efc7ec9577aa8f59f0a424ae3a14"),
    ]
)

