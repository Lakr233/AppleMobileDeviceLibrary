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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.71826AFF-DF4A-45D7-867C-5B3B58F0C887/libimobiledevice.xcframework.zip", checksum: "df2406370fb9fda41fb97e13466ad9dbbe1faa411186e35782eca363d4fdfcad"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.71826AFF-DF4A-45D7-867C-5B3B58F0C887/libimobiledevice_glue.xcframework.zip", checksum: "329a7f8dd9c2647ffadef40ba83a20b926d65b0b253a54add48b6db93e916763"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.71826AFF-DF4A-45D7-867C-5B3B58F0C887/libplist.xcframework.zip", checksum: "d8e1d321abd01b78f6c8a11119b7a151b576c2601b52c8d1e247fe8804eaf34c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.71826AFF-DF4A-45D7-867C-5B3B58F0C887/libtatsu.xcframework.zip", checksum: "07b3d4802f6c17dd87c5c0c2cb8dd6ce7311319173678310ee1acf7c04f3e87d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.71826AFF-DF4A-45D7-867C-5B3B58F0C887/libusbmuxd.xcframework.zip", checksum: "87daa62a16780771a1c4d05487153b6b17e9182326967d8e2372be98b04a6f7d"),
    ]
)

