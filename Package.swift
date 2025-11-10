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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B6A89606-895F-4044-A35E-E52B54ACBB82/libimobiledevice.xcframework.zip", checksum: "9c942648bf8bed21d44e8880550a6ca2f8e38827fe2be7a5b9f338aa18f55721"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B6A89606-895F-4044-A35E-E52B54ACBB82/libimobiledevice_glue.xcframework.zip", checksum: "a3df56581bef9f10171a00ea0f2eff527f159f9242c1db0ff78f8781572f01fb"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B6A89606-895F-4044-A35E-E52B54ACBB82/libplist.xcframework.zip", checksum: "7d67dceb88fe3ceca3e7433f48e6d52191c9f72efb0f87d72cb88ff9e104df94"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B6A89606-895F-4044-A35E-E52B54ACBB82/libtatsu.xcframework.zip", checksum: "34c4154031afa978bf9a1d6816a0fbca5e4d05bc491031e60969d443c1fbbe3d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B6A89606-895F-4044-A35E-E52B54ACBB82/libusbmuxd.xcframework.zip", checksum: "719ec83d926b414aae9333e10a879c60510acffa4be38d280008eb6f543a25d9"),
    ]
)

