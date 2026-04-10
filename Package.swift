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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.97BB5A52-3E75-4435-B468-1620723CC1F5/libimobiledevice.xcframework.zip", checksum: "48834a3e91f8090d45425af30761521e4bf1db450509c6cd45d1ecc00b205585"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.97BB5A52-3E75-4435-B468-1620723CC1F5/libimobiledevice_glue.xcframework.zip", checksum: "374b39ddf72b495afbef954bf8605c348334c1439a71915b1e9ecfea8160bed4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.97BB5A52-3E75-4435-B468-1620723CC1F5/libplist.xcframework.zip", checksum: "b2012d66ed6d7223dfec2c055671d44afafe540ad2afbf4c3fdf6f0a5dae5006"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.97BB5A52-3E75-4435-B468-1620723CC1F5/libtatsu.xcframework.zip", checksum: "066f84a6bae001fc958457c7b32d322df77319ce935e263a16e03067ab8bc026"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.97BB5A52-3E75-4435-B468-1620723CC1F5/libusbmuxd.xcframework.zip", checksum: "0e1bdb0cfd113c7942f8ea133f937ecb47f873dd4f0d3c63ea7ae11a1020438b"),
    ]
)

