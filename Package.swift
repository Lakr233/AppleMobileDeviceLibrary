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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.36A5B022-2517-429C-9CF5-4D5507E11AAB/libimobiledevice.xcframework.zip", checksum: "898eb1e6426a73d03ebdb78640c780baa11f82749e69586a77e0b37b9f1d1687"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.36A5B022-2517-429C-9CF5-4D5507E11AAB/libimobiledevice_glue.xcframework.zip", checksum: "a4459e7c890672258ebbacd2e65c894b104d2f072af4431b3bb6a80e7cb72c87"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.36A5B022-2517-429C-9CF5-4D5507E11AAB/libplist.xcframework.zip", checksum: "ab1d484215143d5889fb6a807f2f3d7b74561c267f9fa0e4b09aa7380e611e31"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.36A5B022-2517-429C-9CF5-4D5507E11AAB/libtatsu.xcframework.zip", checksum: "32e3063f90f1a3b5e5fc7bd7b976e26dd81d85cd96281e094b4c54d98087e2a6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.36A5B022-2517-429C-9CF5-4D5507E11AAB/libusbmuxd.xcframework.zip", checksum: "b59d2788d0f70f7b44dcdf40277094ff1b2d74e82c624a466835b86190f36460"),
    ]
)

