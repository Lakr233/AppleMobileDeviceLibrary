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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E74AD9AA-81B5-470E-AC0A-4C1039711ECE/libimobiledevice.xcframework.zip", checksum: "b78bcdab1b1d9876dce784b50933d652400167aff18d95cd89e74ed1ef45f6c6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E74AD9AA-81B5-470E-AC0A-4C1039711ECE/libimobiledevice_glue.xcframework.zip", checksum: "aea3a9da0cdecdf0f4e922bb60f2918f49139bf4543a5c4c73b9cb6f604cbfa7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E74AD9AA-81B5-470E-AC0A-4C1039711ECE/libplist.xcframework.zip", checksum: "67c61677cd615360b1508f4347ba7b08cc46c32eddcd164070687ca7d907cd0a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E74AD9AA-81B5-470E-AC0A-4C1039711ECE/libtatsu.xcframework.zip", checksum: "e18283e868449d3bf7141ab3eb9d2d782f87cc9cd50c2be809c9c852c7659806"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E74AD9AA-81B5-470E-AC0A-4C1039711ECE/libusbmuxd.xcframework.zip", checksum: "5f3834a75b40600d26bc9e44501a2d9c8226be29d7554ffb6ce064b1b2e8e9bb"),
    ]
)

