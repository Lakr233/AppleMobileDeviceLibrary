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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F5D5B0E5-AAF8-4050-B542-05482A9D63AD/libimobiledevice.xcframework.zip", checksum: "cef35a30feb9b9af443eb6ab8b000a0a4ba6895aa17c8d242d3d707866c8cad1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F5D5B0E5-AAF8-4050-B542-05482A9D63AD/libimobiledevice_glue.xcframework.zip", checksum: "7cb07dcf750ba428ea5380cd012472cfb8da5ea4d0f14d5a90e98d77057ffc58"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F5D5B0E5-AAF8-4050-B542-05482A9D63AD/libplist.xcframework.zip", checksum: "651dd6d1de37ce9466c5cfb9cf0adb9c97b6d63e688ab846393cfa16cb4a762b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F5D5B0E5-AAF8-4050-B542-05482A9D63AD/libtatsu.xcframework.zip", checksum: "320a46aeb5a866da1766f5929ceaa82964c004dc3d2b0ff9ab3b546555372ba6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F5D5B0E5-AAF8-4050-B542-05482A9D63AD/libusbmuxd.xcframework.zip", checksum: "6a36f89e130a8b0d6f7e15da32daabf7fc6174435901477f1c3fa26d25829bae"),
    ]
)

