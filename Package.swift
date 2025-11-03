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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A18ECE9E-723C-4DB4-A0F1-D34AD25E047C/libimobiledevice.xcframework.zip", checksum: "c651cd8c3000d3d7e7c0a0afe52c3c93e2d7671524e5e8003534e6551697ab4f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A18ECE9E-723C-4DB4-A0F1-D34AD25E047C/libimobiledevice_glue.xcframework.zip", checksum: "db77c18437cb61c6bbffe032b57204dcc7b8bf0a373d86ca593927ff1aa0caca"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A18ECE9E-723C-4DB4-A0F1-D34AD25E047C/libplist.xcframework.zip", checksum: "fa1e0bade145e5098895cc51c8b6456c4e21d4319d659bcf3d2ff010d2437d09"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A18ECE9E-723C-4DB4-A0F1-D34AD25E047C/libtatsu.xcframework.zip", checksum: "e2da37c12015c7d52c7bcccbbeaa60d92dc1059b5a8972f54878bc5c3d32b750"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A18ECE9E-723C-4DB4-A0F1-D34AD25E047C/libusbmuxd.xcframework.zip", checksum: "22b734a00ede290580eac8742c32f8f415330ae58c2b38a21ed52b8cf80f27d1"),
    ]
)

