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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.65D574A1-C60D-4C19-950C-20AD35FC2527/libimobiledevice.xcframework.zip", checksum: "a8bbffa6bea9bf7473369e578a4f333fbfad01d82efed91c23dd220c3bbf3a28"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.65D574A1-C60D-4C19-950C-20AD35FC2527/libimobiledevice_glue.xcframework.zip", checksum: "d55975cc1bc940ec244a39c5481fc8bcc667d49179d73a66db5490966525fdaa"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.65D574A1-C60D-4C19-950C-20AD35FC2527/libplist.xcframework.zip", checksum: "09c3dfbcb1a01111c1bbb0f4b3cac9c9d4d139277a826c9f3ca24459186dcf32"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.65D574A1-C60D-4C19-950C-20AD35FC2527/libtatsu.xcframework.zip", checksum: "68dbb4a664cd13ae8eab22adfe3e38189f8554059a3407ee2a4eac6c3a327c5d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.65D574A1-C60D-4C19-950C-20AD35FC2527/libusbmuxd.xcframework.zip", checksum: "deb39a36105ca9c12bf3064b0a00aa1add9fc6d77decdd9177d41f5aadce54b1"),
    ]
)

