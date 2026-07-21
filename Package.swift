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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CC80AA7C-9FD8-4029-8E3D-3B26E17925E5/libimobiledevice.xcframework.zip", checksum: "d89845b120fd868fc3794cd97934a3ee16ff45ce7515a7aa59107d09706c891b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CC80AA7C-9FD8-4029-8E3D-3B26E17925E5/libimobiledevice_glue.xcframework.zip", checksum: "f5acebc865598f4a4dfe682710fe1f93b995f74c708ccacb05cfa81982ee1203"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CC80AA7C-9FD8-4029-8E3D-3B26E17925E5/libplist.xcframework.zip", checksum: "f5c0be46febb9aa784d74f524cdc7a99d0fefb460ed9b857d14b18987fc7c6d2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CC80AA7C-9FD8-4029-8E3D-3B26E17925E5/libtatsu.xcframework.zip", checksum: "c311a16cdbfc4008a3edaa25ceca9fe7867a52caef45a8b3373f94bc52e4d4e0"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CC80AA7C-9FD8-4029-8E3D-3B26E17925E5/libusbmuxd.xcframework.zip", checksum: "fe35266b38fc3729904aa63168aa746818c69a32c446d6fb6c6817dd7d259912"),
    ]
)

