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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5182EBA4-9250-4789-A6CC-2457F38FBB65/libimobiledevice.xcframework.zip", checksum: "df2981acc04bd7bec01ad404931c784abaafc05aa8582b71cd6616cd18113281"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5182EBA4-9250-4789-A6CC-2457F38FBB65/libimobiledevice_glue.xcframework.zip", checksum: "52e39b6a37498fa332c20f00366861c3ab979d5d6ceb87118f26063ab225eaa8"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5182EBA4-9250-4789-A6CC-2457F38FBB65/libplist.xcframework.zip", checksum: "a26b2fb0bcbcc1344403e2f0de15dadb77cf9ce80725fbee793022a45058824d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5182EBA4-9250-4789-A6CC-2457F38FBB65/libtatsu.xcframework.zip", checksum: "15ad17c55545ddbb40d24f514d7d66556926a1b67a80ea484e06aaf3db04aa3f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5182EBA4-9250-4789-A6CC-2457F38FBB65/libusbmuxd.xcframework.zip", checksum: "1d0959b6a49ae7966c34bd05d6125fa5c2c793505480ad9361701c17a5eadc12"),
    ]
)

