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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.122153F0-B16C-4E85-8DCC-04100B83D643/libimobiledevice.xcframework.zip", checksum: "3c6030483150497ec3b5469b816fb886b89ef0860fedd8913535c8327814462d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.122153F0-B16C-4E85-8DCC-04100B83D643/libimobiledevice_glue.xcframework.zip", checksum: "7e93f1ff047d48579821c24f2efc85877625888b7451437062f689d20eb36b8e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.122153F0-B16C-4E85-8DCC-04100B83D643/libplist.xcframework.zip", checksum: "45dcd8f333d0cb25a7471c898d412c5c82fcf35319f5686fcde9d9d14b307802"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.122153F0-B16C-4E85-8DCC-04100B83D643/libtatsu.xcframework.zip", checksum: "5ce2d2d144fdf1386cf5eb2c201d843e5de753a83b86862a5a7bb5c5aa4decb1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.122153F0-B16C-4E85-8DCC-04100B83D643/libusbmuxd.xcframework.zip", checksum: "dc5fdd161283584a33a0aa511520c70f8f97b64e60d3d3f6dfc94e53d8f27df0"),
    ]
)

