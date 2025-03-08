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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2D1306D5-CC64-4159-85D4-D895ADDFD43A/libimobiledevice.xcframework.zip", checksum: "7dea1872bfc5049c2cf7c07506f5121081cf0d606e40073c8877c65be5a268b2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2D1306D5-CC64-4159-85D4-D895ADDFD43A/libimobiledevice_glue.xcframework.zip", checksum: "6a150b06f9228aa8acfa341748d0b8757b25e004ea042e71fdb1c0643abd4bc6"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2D1306D5-CC64-4159-85D4-D895ADDFD43A/libplist.xcframework.zip", checksum: "60a5a59f08b6c1c9a22bef31ba1c4de1608a97dea441b8c7779f7968c9065ddb"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2D1306D5-CC64-4159-85D4-D895ADDFD43A/libtatsu.xcframework.zip", checksum: "a4d472c3a586ac34a5a8bc9fc3a157e30e18df275d0f4f15ac3b6acf4a99281f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2D1306D5-CC64-4159-85D4-D895ADDFD43A/libusbmuxd.xcframework.zip", checksum: "fd68d3d40d65a1ae05e4111f6fe2503cf7187ff9281ce6380b6f43fed6edf1fd"),
    ]
)

