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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.64ADC319-5A5B-4250-A4BF-B85FEBABABF5/libimobiledevice.xcframework.zip", checksum: "e4a28797af8e039acdee6cbad52aa1d52d3893e70deb8e8075241d2a4895ee48"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.64ADC319-5A5B-4250-A4BF-B85FEBABABF5/libimobiledevice_glue.xcframework.zip", checksum: "d5683523ee36157538ee2515fd69c9f077cb4bad2ad42d6df4fd692ab9eca3bf"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.64ADC319-5A5B-4250-A4BF-B85FEBABABF5/libplist.xcframework.zip", checksum: "a0033f169696fff70a962030b8a598b5f404f205ae08fc9df6d7452df46cf2c1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.64ADC319-5A5B-4250-A4BF-B85FEBABABF5/libtatsu.xcframework.zip", checksum: "25a1b3d76bff9bdb13da34092bf5182c8a0cce60e48af7e12c9f41bac5fcfd8c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.64ADC319-5A5B-4250-A4BF-B85FEBABABF5/libusbmuxd.xcframework.zip", checksum: "573480cd8b219700aab06616748e88eb1829ac16e05bb5c393c01addcceaeb85"),
    ]
)

