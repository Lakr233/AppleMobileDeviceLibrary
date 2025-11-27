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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0305DA8E-B54C-421B-B11E-FA74DFC6F5C8/libimobiledevice.xcframework.zip", checksum: "b0216bf6c923ae18be2e07caa037a70fc8aba972814d10ea9777b34965a35d3f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0305DA8E-B54C-421B-B11E-FA74DFC6F5C8/libimobiledevice_glue.xcframework.zip", checksum: "99e5a8b569729bf25abbb2f47df9f25299623d7babcf7b4356aa5ecb5b0121eb"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0305DA8E-B54C-421B-B11E-FA74DFC6F5C8/libplist.xcframework.zip", checksum: "6f322a193dc249e5a5a780ca8c39d3337cd9698ff36a668cd5b6be0fe1662c1d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0305DA8E-B54C-421B-B11E-FA74DFC6F5C8/libtatsu.xcframework.zip", checksum: "133db734118046b03cc1e813230326b9340e55dbf17d1da0fb3c2da1724dbfb2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0305DA8E-B54C-421B-B11E-FA74DFC6F5C8/libusbmuxd.xcframework.zip", checksum: "8964c33bb6158e4ec0874cb71ff41277a65b9d27dde4a0114c7bd150794ff964"),
    ]
)

