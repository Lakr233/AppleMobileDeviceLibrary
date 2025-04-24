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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E78C05F2-59B1-41F2-81DA-423C6286F94D/libimobiledevice.xcframework.zip", checksum: "c66a99495a3cce3e9936cabd980c3ca5a7e4501024a904c826dd144a4cb47d39"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E78C05F2-59B1-41F2-81DA-423C6286F94D/libimobiledevice_glue.xcframework.zip", checksum: "866f2771a1b3cc09f4f0e960a7bc971a851cced78935dea9b5c901f5ffd3e45f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E78C05F2-59B1-41F2-81DA-423C6286F94D/libplist.xcframework.zip", checksum: "1aa69dc0bcd3cf4a14f86540ae1f949e0b58f62a006cb1bfef6c68f91b73685f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E78C05F2-59B1-41F2-81DA-423C6286F94D/libtatsu.xcframework.zip", checksum: "c98768740d94cffb6dd8095f204caa33005554897b940cdd829b9d7d960c3a12"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E78C05F2-59B1-41F2-81DA-423C6286F94D/libusbmuxd.xcframework.zip", checksum: "faea5b223f0abfcdac6523772b1daf274976e295f995b00d9c0f0de256210ea7"),
    ]
)

