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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E6A963EB-41B2-4E2F-8F80-54241D40F86A/libimobiledevice.xcframework.zip", checksum: "3ad9a4832f9de9b4bf790bd1711ed9779cd6e260843e4a9acbbfed09a65d5129"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E6A963EB-41B2-4E2F-8F80-54241D40F86A/libimobiledevice_glue.xcframework.zip", checksum: "7d10721dcb5bb15ac7434a9110654ddb8441a6b689e895da755395cfd4a1d3ae"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E6A963EB-41B2-4E2F-8F80-54241D40F86A/libplist.xcframework.zip", checksum: "f5c024fc7c5b8a6ff584bbeb14891451ef0ba71230c1339cce98c16f0cf3949f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E6A963EB-41B2-4E2F-8F80-54241D40F86A/libtatsu.xcframework.zip", checksum: "ee2a3104f8c0af5e04a7d1e82322718fb416c9544c0020d44d6d131498a2d014"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E6A963EB-41B2-4E2F-8F80-54241D40F86A/libusbmuxd.xcframework.zip", checksum: "daf54858cfaaad0fd6121bdf0d44f63a5476e4f0a724e1b7b7bcab3d210df0e1"),
    ]
)

