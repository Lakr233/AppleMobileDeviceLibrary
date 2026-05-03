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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E76E0CF6-A060-4008-9F51-3D6079D6BE2C/libimobiledevice.xcframework.zip", checksum: "9e1464501be7d197317bea936d02a1043bd2a3bb7fc368fc11ed1b1054ae84de"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E76E0CF6-A060-4008-9F51-3D6079D6BE2C/libimobiledevice_glue.xcframework.zip", checksum: "4f435b9b2c220da927aef1fcaa952579241ae6c4f7eb802f03844bece538aa01"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E76E0CF6-A060-4008-9F51-3D6079D6BE2C/libplist.xcframework.zip", checksum: "c6f02e3f98c5b2cff99837110da4f734147f00565957255a104299759e2ac977"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E76E0CF6-A060-4008-9F51-3D6079D6BE2C/libtatsu.xcframework.zip", checksum: "a89dbdc43e22eb50d386c6ac18020e25975909048437903abb30f103a1e6ca9b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E76E0CF6-A060-4008-9F51-3D6079D6BE2C/libusbmuxd.xcframework.zip", checksum: "9fd1a9a8500ca6f1f0a2890a6f828e083cd83171ea9abcaaf0ae6a9cc063828b"),
    ]
)

