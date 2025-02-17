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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E8AF8F7A-1319-4CF5-B222-DA2A5C5AE22D/libimobiledevice.xcframework.zip", checksum: "cbec97691c35bb195b2a991837be9d2a69f9fd0908b3a016d585b79d6b2d1542"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E8AF8F7A-1319-4CF5-B222-DA2A5C5AE22D/libimobiledevice_glue.xcframework.zip", checksum: "295fb9b7fa75b526f12a7852e1d5d64f641f6f9bc7c07ba58aad68240b485d20"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E8AF8F7A-1319-4CF5-B222-DA2A5C5AE22D/libplist.xcframework.zip", checksum: "9bf33f68aba6f0956e95c65f4f238967fd5e12a4d283f6bc5ab2860101700578"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E8AF8F7A-1319-4CF5-B222-DA2A5C5AE22D/libtatsu.xcframework.zip", checksum: "974edf0fd3e9e38fe1a3293f5ac9efc22fa7e8994791b00b55581a184cdcd302"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E8AF8F7A-1319-4CF5-B222-DA2A5C5AE22D/libusbmuxd.xcframework.zip", checksum: "63eaca633813bd1c94d09b31da863214d8adb7f9d7508ac76a938e64b8dab2ea"),
    ]
)

