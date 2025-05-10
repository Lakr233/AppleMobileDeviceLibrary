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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61D70F72-B0FB-41F9-8E5F-7C11831A29B4/libimobiledevice.xcframework.zip", checksum: "081a4b4c376f84ceba487acb836f501eb1a639604fa2ebdfa3740cfca746e3b7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61D70F72-B0FB-41F9-8E5F-7C11831A29B4/libimobiledevice_glue.xcframework.zip", checksum: "c576626efdac5855a14d37a1df5a0cd066a1832565d65f50f58dd8169441c57f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61D70F72-B0FB-41F9-8E5F-7C11831A29B4/libplist.xcframework.zip", checksum: "bb1e08b5ff10737985a4b728d79f60381a8f3535cba0643e64ff63d251c4dc2a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61D70F72-B0FB-41F9-8E5F-7C11831A29B4/libtatsu.xcframework.zip", checksum: "e0bc3897843400de10147b28d5b7829a75fb70e45e6247fb30d63a0b7380fba8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61D70F72-B0FB-41F9-8E5F-7C11831A29B4/libusbmuxd.xcframework.zip", checksum: "20cee38594704889271628dd9b20500cbac2c60926163bbf6f7ab4be21ea5b76"),
    ]
)

