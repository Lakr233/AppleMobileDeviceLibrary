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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D2F3F5A0-B2D2-4320-ACA6-1BBC55832507/libimobiledevice.xcframework.zip", checksum: "f6e5a7e346b5f77e9e3f5a47022038b8ce1a45373139b54204bda78df9538346"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D2F3F5A0-B2D2-4320-ACA6-1BBC55832507/libimobiledevice_glue.xcframework.zip", checksum: "88473ce74c3f8ddc43cc06c1855b14def2cb8bfb39a0ad57bc7673a4feeb5e03"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D2F3F5A0-B2D2-4320-ACA6-1BBC55832507/libplist.xcframework.zip", checksum: "d2750c0c27d58ac2699ca31886d2de74d338a2c7956389adc441eac339fefa6c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D2F3F5A0-B2D2-4320-ACA6-1BBC55832507/libtatsu.xcframework.zip", checksum: "e3c897b8d6879449fb5e549cf8b5b784c7f68c3ce3fc80f4139b77fc85a14c2d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D2F3F5A0-B2D2-4320-ACA6-1BBC55832507/libusbmuxd.xcframework.zip", checksum: "b04bbeb2afe3d625fcf0563d97836d76c3c558bfd87c135db893ffcabc3e58e7"),
    ]
)

