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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DEF2C3B3-D1A3-486F-A489-F9618104DB2F/libimobiledevice.xcframework.zip", checksum: "14327771fc26f1d21989328e3397a28c08ec375622771a6857aee8f1e99ed96e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DEF2C3B3-D1A3-486F-A489-F9618104DB2F/libimobiledevice_glue.xcframework.zip", checksum: "778eec1458a45912eb22d6fe1facfb2817bc0622a395e4ae6879097718b94dcc"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DEF2C3B3-D1A3-486F-A489-F9618104DB2F/libplist.xcframework.zip", checksum: "6d4fe9cfcbc2a9d753c60ec880ae23b390ce27e21eb4ea862a41262039f6134c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DEF2C3B3-D1A3-486F-A489-F9618104DB2F/libtatsu.xcframework.zip", checksum: "a9442611740a7de559a8293a0950ae23f5b7e19626589491a349c866768cfe8a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DEF2C3B3-D1A3-486F-A489-F9618104DB2F/libusbmuxd.xcframework.zip", checksum: "5511bf008fcc4976847c1e8faee4a11c64b6899ff109cca556089cf08432d7bf"),
    ]
)

