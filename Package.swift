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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4BC5CC0-358D-44FF-B420-28E703BBE900/libimobiledevice.xcframework.zip", checksum: "3df121d9d2cf719f579ce842398f6d85622c48ee8ffb5da7571382559fedb4b7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4BC5CC0-358D-44FF-B420-28E703BBE900/libimobiledevice_glue.xcframework.zip", checksum: "cbe516fb86be36adb0d516877adbef7d4b39a749ca6c8e0dca6f2f68338ba066"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4BC5CC0-358D-44FF-B420-28E703BBE900/libplist.xcframework.zip", checksum: "e2a84ba7405d993968a641f3e3a967f12b4b7b750b81ff7f3422887b8f12afae"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4BC5CC0-358D-44FF-B420-28E703BBE900/libtatsu.xcframework.zip", checksum: "a2bf77759b855209a32f4bffb890d5e2fc28f0acc7028cdb2fc493654fca384e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4BC5CC0-358D-44FF-B420-28E703BBE900/libusbmuxd.xcframework.zip", checksum: "93bc22010730bab658864e2bd73948687e827977acf2641f44f12021be74eb7c"),
    ]
)

