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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.68FE75F7-0591-4640-87EB-0F00B91F734E/libimobiledevice.xcframework.zip", checksum: "dc5dcd4c8395945a3e6f739447629dfd974d8fe620fb517d0878fb0970b238a2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.68FE75F7-0591-4640-87EB-0F00B91F734E/libimobiledevice_glue.xcframework.zip", checksum: "b8742b847d7139f604de2877a7c10ee904ef10f1e13ba10eccd0f12326bea1f4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.68FE75F7-0591-4640-87EB-0F00B91F734E/libplist.xcframework.zip", checksum: "02f6a152d31171c0b1f23d446d8623d876300a7444ee7fdeec96cc5499c950dd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.68FE75F7-0591-4640-87EB-0F00B91F734E/libtatsu.xcframework.zip", checksum: "e9c3e505ee22c9043cf098e0cf90dc00cdb911570d2c93d1487aa530ac1bc9b3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.68FE75F7-0591-4640-87EB-0F00B91F734E/libusbmuxd.xcframework.zip", checksum: "2baa68c4369554cea96a8220fe503623f68a38253ac0cdaa908efae136506aa0"),
    ]
)

