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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A18FD3D2-06A6-40BD-A772-0228C60476B4/libimobiledevice.xcframework.zip", checksum: "2db6e50feb6af51e3dbda4304828efc8700ded6e88754eb207d2bc147a0edcfa"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A18FD3D2-06A6-40BD-A772-0228C60476B4/libimobiledevice_glue.xcframework.zip", checksum: "3729fd052981d32b4aea872629910e2bb0b7acdb1600567730811b4c41d1ea94"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A18FD3D2-06A6-40BD-A772-0228C60476B4/libplist.xcframework.zip", checksum: "63ccc7787e9907a4380c7b4ed6aaf1f426ea1c65e5c39cedf627b0a295a46e6c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A18FD3D2-06A6-40BD-A772-0228C60476B4/libtatsu.xcframework.zip", checksum: "fd43246dbf3d9749313bb1d0df3c313313a5dd4a6487cf9e022ae98663dbddb9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A18FD3D2-06A6-40BD-A772-0228C60476B4/libusbmuxd.xcframework.zip", checksum: "a0dccfe6e38afde67160c534d7d9f775853a2016ca9c703c094638189aa3ee4e"),
    ]
)

