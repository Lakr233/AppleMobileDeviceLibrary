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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BA59590-CF9E-4821-98E5-4631CA8F4E68/libimobiledevice.xcframework.zip", checksum: "350a0ac447d0419cff1651db38fef4c8f0b73bba7b80553a9fa55d8c73ce3c13"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BA59590-CF9E-4821-98E5-4631CA8F4E68/libimobiledevice_glue.xcframework.zip", checksum: "b85a37230723e3567efc191389db1c08d830538ea07bd99599ef11d979130a80"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BA59590-CF9E-4821-98E5-4631CA8F4E68/libplist.xcframework.zip", checksum: "d267ecc7cc6413bffb530c0494c94ee7f75770de8b7615f7a3c9f2126c00b221"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BA59590-CF9E-4821-98E5-4631CA8F4E68/libtatsu.xcframework.zip", checksum: "a99c99a4d46aedfad3a4e29e935f086946099c2c91482a721e2d3e6c1c84faff"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BA59590-CF9E-4821-98E5-4631CA8F4E68/libusbmuxd.xcframework.zip", checksum: "1a905ffc000b6fec15b3590e05134a7195035f3d65dd849c46b5f7d0b514ef6c"),
    ]
)

