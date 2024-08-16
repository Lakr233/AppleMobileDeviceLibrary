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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BFFACA83-57EA-4420-A1FF-28D03106E2A3/libimobiledevice.xcframework.zip", checksum: "09869799184541e1f3bdf845db6cb8ebd37fa5127b9ed4fd92afe6c9da60a822"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BFFACA83-57EA-4420-A1FF-28D03106E2A3/libimobiledevice_glue.xcframework.zip", checksum: "50000322a5585a6a64c2ceb67d1a3ea6169e6c49c0051bd6673f5c93dc9987ed"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BFFACA83-57EA-4420-A1FF-28D03106E2A3/libplist.xcframework.zip", checksum: "921401d314f83099cfab3ebb4bf61c9da7be9b1a629d3dd959010ef0347ec806"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BFFACA83-57EA-4420-A1FF-28D03106E2A3/libtatsu.xcframework.zip", checksum: "140dc5e6e765dde5390bb42aef0956c218b3160f9093422aa60b4f5f1debf5f2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BFFACA83-57EA-4420-A1FF-28D03106E2A3/libusbmuxd.xcframework.zip", checksum: "c234f077a6607bc3dfcc61dfa44ef9124c4011b939872cd20221f2bf4eac2ae8"),
    ]
)

