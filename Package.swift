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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.222AEC27-D3A7-4376-A102-0D6C6A7970F8/libimobiledevice.xcframework.zip", checksum: "10e28e80d1a9029ba9bfbe3cbf1901c9ef41a94de778b3120d9df947c9e4deb6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.222AEC27-D3A7-4376-A102-0D6C6A7970F8/libimobiledevice_glue.xcframework.zip", checksum: "2cd915269f810b9c05330c75b99e11abc58fec787bfdec8b5c2d2db0fa0c5e2c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.222AEC27-D3A7-4376-A102-0D6C6A7970F8/libplist.xcframework.zip", checksum: "25a940125b79e714ae81450ccebf017e8d8e760a2d524e0383b928d2c7018e94"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.222AEC27-D3A7-4376-A102-0D6C6A7970F8/libtatsu.xcframework.zip", checksum: "531f62919c2f33bca990d1c673ca968d64c201c82670d9024231f32a458062d9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.222AEC27-D3A7-4376-A102-0D6C6A7970F8/libusbmuxd.xcframework.zip", checksum: "dd4b549efebac40a21a85078285f1d55e5611d86859a67e83fd6e9ca7dc13b39"),
    ]
)

