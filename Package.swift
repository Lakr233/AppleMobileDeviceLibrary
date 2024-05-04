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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CDA15D2D-2ECE-4E55-879D-BDBE1196CB6A/libimobiledevice.xcframework.zip", checksum: "5510f7d4c777505d8715e62f6301013a8ee618f8806e0f1e036dfbaacc161f7e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CDA15D2D-2ECE-4E55-879D-BDBE1196CB6A/libimobiledevice_glue.xcframework.zip", checksum: "afe7d714ceaed5cb0489b4b7966464de293e82d33078329c4c354a150b36a560"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CDA15D2D-2ECE-4E55-879D-BDBE1196CB6A/libplist.xcframework.zip", checksum: "0a26b8913ea2a30e87547632e1e39d6bc6e2181e1343153180bea85f44b8c467"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CDA15D2D-2ECE-4E55-879D-BDBE1196CB6A/libusbmuxd.xcframework.zip", checksum: "83109b02f9e3944658074130ff980963c14135f5d889a6dfa5630a66e4645ba8"),
    ]
)

