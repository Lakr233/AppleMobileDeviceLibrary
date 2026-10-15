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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA6B5C1E-05B4-4DA9-9F6F-AA5FFFCF1D50/libimobiledevice.xcframework.zip", checksum: "f4ea66b4b702b51521ad3fbee3a10a2f7e794ada22a8216536c1b4ea24ef01aa"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA6B5C1E-05B4-4DA9-9F6F-AA5FFFCF1D50/libimobiledevice_glue.xcframework.zip", checksum: "3b745b8cbc9cfce67d1a8d0e6e1edadd58a219da471cac592d6d12ab6c25d494"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA6B5C1E-05B4-4DA9-9F6F-AA5FFFCF1D50/libplist.xcframework.zip", checksum: "ff81f166498e39b9a3e79e370024f0e5f15917e57ca9eb7ad9a3ba1c13870516"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA6B5C1E-05B4-4DA9-9F6F-AA5FFFCF1D50/libtatsu.xcframework.zip", checksum: "6465b85d3eeacfd42aa17aae14c1d5508f7863203040d85ea75949e9d6d9f88f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA6B5C1E-05B4-4DA9-9F6F-AA5FFFCF1D50/libusbmuxd.xcframework.zip", checksum: "f3c900064569142fefc07632bc805cb0719eb7a5d64635ca91d96710e3ed0ca5"),
    ]
)

