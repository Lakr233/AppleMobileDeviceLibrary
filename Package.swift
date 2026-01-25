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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2BB9D79F-F742-4202-9B75-2F5B8E0A7631/libimobiledevice.xcframework.zip", checksum: "669fb63a0a1b3e21a541a750cefd3fa9e6e6f052b0b490fd448d760963b20f83"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2BB9D79F-F742-4202-9B75-2F5B8E0A7631/libimobiledevice_glue.xcframework.zip", checksum: "e53544db8b262eb162f9370d91211af4062c5054d747e3fe415032d52288130d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2BB9D79F-F742-4202-9B75-2F5B8E0A7631/libplist.xcframework.zip", checksum: "ddbe3ea7c5f5e63c0f1e6c5fb408b67a2adc9d3e7f070d7ae77762f885c3cab9"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2BB9D79F-F742-4202-9B75-2F5B8E0A7631/libtatsu.xcframework.zip", checksum: "f256f8bd7626244e3399c8d565bec51ba0d9d976d3c37b67c2a5225aef497345"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2BB9D79F-F742-4202-9B75-2F5B8E0A7631/libusbmuxd.xcframework.zip", checksum: "d740e6175ac16eab242e93a7b76a25effdf1c895987a9eb27366a43668db87ce"),
    ]
)

