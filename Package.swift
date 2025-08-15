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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C642BBC0-5825-48AA-A3A8-7D153780C85E/libimobiledevice.xcframework.zip", checksum: "823682d791dd517565a77fc699e6bc93802f1e84115722bc293a058d1c6e80a7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C642BBC0-5825-48AA-A3A8-7D153780C85E/libimobiledevice_glue.xcframework.zip", checksum: "d278d15fa398db13ae1e13f807aaff12812366711dc5a3519c255e03ee47faa2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C642BBC0-5825-48AA-A3A8-7D153780C85E/libplist.xcframework.zip", checksum: "d862fdb0c9c6d27fb585126158b897dbf87ac30c40c1360a0589987626f5e412"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C642BBC0-5825-48AA-A3A8-7D153780C85E/libtatsu.xcframework.zip", checksum: "17270e4aa12c9f56471af443033c5709ddabd9192fd3dddd430f154dfdfdf926"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C642BBC0-5825-48AA-A3A8-7D153780C85E/libusbmuxd.xcframework.zip", checksum: "0eacd03864e8395120db68ee643198ff323c289b4170860de4d4166419fe8cf1"),
    ]
)

