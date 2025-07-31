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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6A4A1204-A462-47C9-994A-76F83E7F678B/libimobiledevice.xcframework.zip", checksum: "19b4097d4d0a27f3f0c6b98712eb7c3eecb271e35af4c0760ef174b0b1654838"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6A4A1204-A462-47C9-994A-76F83E7F678B/libimobiledevice_glue.xcframework.zip", checksum: "544d76d8a60453c14dc8be9b273de9ecc30868fece36f48c1b53105c6a7b4901"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6A4A1204-A462-47C9-994A-76F83E7F678B/libplist.xcframework.zip", checksum: "a19a6caa23a7fd4bd866830496d11d93f0b160960c2a384a66707b4c61ab34d8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6A4A1204-A462-47C9-994A-76F83E7F678B/libtatsu.xcframework.zip", checksum: "0af53af47a7d032a45c04b09a0c023b1ad438f3718e4907f5277d57e1d3087d2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6A4A1204-A462-47C9-994A-76F83E7F678B/libusbmuxd.xcframework.zip", checksum: "a58ae6703c4acf9f381d229f1505c979a77ef0a85fb2b3f8c49e07e7cda1ff93"),
    ]
)

