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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5DFA003-E36E-48C5-9785-DC83B1A52366/libimobiledevice.xcframework.zip", checksum: "b91ab67c0bfefb63d35e2542ff83e95e3bbe5fa0b9f8586bb6aa5e28100b8290"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5DFA003-E36E-48C5-9785-DC83B1A52366/libimobiledevice_glue.xcframework.zip", checksum: "244f514cfa5e63ce70df789507de247988a3f1f0a0af6e96623ac946d90326b1"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5DFA003-E36E-48C5-9785-DC83B1A52366/libplist.xcframework.zip", checksum: "efbc5e7188887f9bc2298bf08cd07fe2c4db57c7fca5a5be8aed9cea1976971b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5DFA003-E36E-48C5-9785-DC83B1A52366/libtatsu.xcframework.zip", checksum: "963ff9b5365a3c786c6a0507eb32cf4626c660a5f8245386c93e1e41a0e1c170"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5DFA003-E36E-48C5-9785-DC83B1A52366/libusbmuxd.xcframework.zip", checksum: "5aa5e858806570604b9a7ec0469b48ca6c5856e3a3a55972f1ff952cda58ca1d"),
    ]
)

