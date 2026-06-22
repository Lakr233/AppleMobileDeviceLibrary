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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D274A9AB-3DB5-4198-9153-347D21CFF34E/libimobiledevice.xcframework.zip", checksum: "91c5413133dcba6d9d7cb9179019dfeca49add0ee208b60facd2a5093660281b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D274A9AB-3DB5-4198-9153-347D21CFF34E/libimobiledevice_glue.xcframework.zip", checksum: "85cc815c77319e5c8c8087bf40aa1ec68f9e3c319211a357035b11e0b3fd9906"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D274A9AB-3DB5-4198-9153-347D21CFF34E/libplist.xcframework.zip", checksum: "25677e3a4d57eed00daefad02b707c519e81a53301766cc5efdf623c41d701ac"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D274A9AB-3DB5-4198-9153-347D21CFF34E/libtatsu.xcframework.zip", checksum: "4f687a8b907aa07fc2a2d5ab5e9014964aedea56990e604158ca9e8b3e698c18"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D274A9AB-3DB5-4198-9153-347D21CFF34E/libusbmuxd.xcframework.zip", checksum: "a6f651b0902f7e21bff3f581d3b898d6746c04c57f188a1138cd02f3bc7b6e92"),
    ]
)

