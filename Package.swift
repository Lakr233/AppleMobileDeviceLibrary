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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0EDFD29-104A-42CA-B7A9-12CF9AE5932A/libimobiledevice.xcframework.zip", checksum: "1ddcb161199010e8314f29fa05e5de23383f9695aa395cdd370fe01109fdd114"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0EDFD29-104A-42CA-B7A9-12CF9AE5932A/libimobiledevice_glue.xcframework.zip", checksum: "b246519b2fc1a5bbc95da9ecda7c2af5773ca1ae2655fa71d7922fce3f063b0d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0EDFD29-104A-42CA-B7A9-12CF9AE5932A/libplist.xcframework.zip", checksum: "d191f962f6d2ac5ce9d38892dc3d52afe9a41d18dda8a9b793295d16562ff46f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0EDFD29-104A-42CA-B7A9-12CF9AE5932A/libtatsu.xcframework.zip", checksum: "0642d43a9f8517f2f0053b059b8bf0abb14e681712c38c984c389cd3e68f8b83"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0EDFD29-104A-42CA-B7A9-12CF9AE5932A/libusbmuxd.xcframework.zip", checksum: "30f13ca44ea6d0b71565ef1dc5c4ae41b0c15c6810bcc51dd56f8cb91e5c517e"),
    ]
)

