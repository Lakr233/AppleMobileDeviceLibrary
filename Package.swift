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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.30E4C6AC-DE5D-4C6B-93E8-D02E7981D095/libimobiledevice.xcframework.zip", checksum: "181c86b8a2be8bc41fc51a42639fc0ff2a8ea08428a5d89f3ba545fbe5e5345e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.30E4C6AC-DE5D-4C6B-93E8-D02E7981D095/libimobiledevice_glue.xcframework.zip", checksum: "55cf3438420994b456575634972f15efbc37531926ba333f3f979d00503b3191"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.30E4C6AC-DE5D-4C6B-93E8-D02E7981D095/libplist.xcframework.zip", checksum: "769f44d17403ebe69b7ce108457c057e508846d1711330ef9bd3c8e24534b792"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.30E4C6AC-DE5D-4C6B-93E8-D02E7981D095/libtatsu.xcframework.zip", checksum: "6eacdea1ccb2d0a6d6a22d98727516a58145124e71cdad2ba0b75eb9332e8c8b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.30E4C6AC-DE5D-4C6B-93E8-D02E7981D095/libusbmuxd.xcframework.zip", checksum: "471b14ad0a18e8d691c57cd1108ad471d5abebff374c5bfaba17c3c5bbea8cf1"),
    ]
)

