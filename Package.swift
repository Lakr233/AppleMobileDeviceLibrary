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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2364B818-BAB3-49F9-8C40-CC2B9737F78A/libimobiledevice.xcframework.zip", checksum: "e756f83f59deaa6bebcd882d5c0655b8853bb8f8e38096bf4bfe6a7ce8af92f6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2364B818-BAB3-49F9-8C40-CC2B9737F78A/libimobiledevice_glue.xcframework.zip", checksum: "cb67a2ad3e8ed5ab557e3be870ee5e2a30652efee7b2d3613ec3e1d2674a2272"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2364B818-BAB3-49F9-8C40-CC2B9737F78A/libplist.xcframework.zip", checksum: "526439a70e3d41c193a289f274551e4f36abd5d4958506ad14d39d0b511508bf"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2364B818-BAB3-49F9-8C40-CC2B9737F78A/libtatsu.xcframework.zip", checksum: "3e7152ce2b545110e9a87d914f92787a0a9b3d168d7a4582a8405cfb13cf4d0a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2364B818-BAB3-49F9-8C40-CC2B9737F78A/libusbmuxd.xcframework.zip", checksum: "5c575145d600533c79603e4cc142f6b76f9cd5ba89f155be0e0a46dafff02dde"),
    ]
)

