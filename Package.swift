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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.85EB289E-6C49-400C-A828-3EA9EF2FA9D3/libimobiledevice.xcframework.zip", checksum: "5251721a1d9b3818a764119b592bffb624632f08b8a5f1444373940dadb7ac86"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.85EB289E-6C49-400C-A828-3EA9EF2FA9D3/libimobiledevice_glue.xcframework.zip", checksum: "04be2cf5173a6009da4d44d32d5051e58790ba00296ea4cf4fe65286b18767d6"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.85EB289E-6C49-400C-A828-3EA9EF2FA9D3/libplist.xcframework.zip", checksum: "c20104e08c599af47e66470121696ccc3ee62304d81d3f4d3419cb593f77fb24"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.85EB289E-6C49-400C-A828-3EA9EF2FA9D3/libusbmuxd.xcframework.zip", checksum: "7e23ebb83331b83bf9d2730bbde312b84f6abcc381cc1c7778d29092a038cd84"),
    ]
)

