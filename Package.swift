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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.76EF4878-A4B3-4FA5-BA99-F3E06B8E32F5/libimobiledevice.xcframework.zip", checksum: "c4d68b7aee10356ca0da6055c8dd4c260f738a5c89b20987026769b550045fbb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.76EF4878-A4B3-4FA5-BA99-F3E06B8E32F5/libimobiledevice_glue.xcframework.zip", checksum: "357499eba8822ba8f7f3efa6847e7a58041e341a391bfb0df38877c1739f1f2b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.76EF4878-A4B3-4FA5-BA99-F3E06B8E32F5/libplist.xcframework.zip", checksum: "2be7df96551320c4cbbf1a5ae07897a839701610366123535c949d77db4dab20"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.76EF4878-A4B3-4FA5-BA99-F3E06B8E32F5/libtatsu.xcframework.zip", checksum: "af30e102b109b25290e36d9f8cc29c420ff255462adec0ee5f990c55f1de05b9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.76EF4878-A4B3-4FA5-BA99-F3E06B8E32F5/libusbmuxd.xcframework.zip", checksum: "4d76202ac1b6385c79ead7794ec2cb9545f84c70984eb76f976e75ed150ddfff"),
    ]
)

