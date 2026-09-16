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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D2BD83A-CFF7-447A-AD5B-E1516C1C859E/libimobiledevice.xcframework.zip", checksum: "2a02cf25674d451a6a8d85cad7b244227fa490c72e0025bbf37fe0e94b763b5b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D2BD83A-CFF7-447A-AD5B-E1516C1C859E/libimobiledevice_glue.xcframework.zip", checksum: "f3c19a4e82c8eec7aae5c46b4c1c8f337bc3ebd0fdf6e56a1b50f4a2b046ed4c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D2BD83A-CFF7-447A-AD5B-E1516C1C859E/libplist.xcframework.zip", checksum: "806ba0088fc1da04878ec8867848388ef8fcb83fc74dff4c76374fa7891ac9a0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D2BD83A-CFF7-447A-AD5B-E1516C1C859E/libtatsu.xcframework.zip", checksum: "841dae2fa397b69a042ac12686ebff99435ba4936b1bef3f8ed4ac35fca54245"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D2BD83A-CFF7-447A-AD5B-E1516C1C859E/libusbmuxd.xcframework.zip", checksum: "9b2119c74b544641120ec84003cf97783fd63fe2f99a65d401b06bb9f455351c"),
    ]
)

