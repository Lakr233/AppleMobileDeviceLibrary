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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED93B167-A9BF-40C4-9150-3ACD8FA1796C/libimobiledevice.xcframework.zip", checksum: "596a740223db32c14e2957f62077b221407939505e5b224aaaac6f2522a9118c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED93B167-A9BF-40C4-9150-3ACD8FA1796C/libimobiledevice_glue.xcframework.zip", checksum: "8b9cf18e6cec369da7173692902a96ad043d44a991da6f30531b677737391f69"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED93B167-A9BF-40C4-9150-3ACD8FA1796C/libplist.xcframework.zip", checksum: "6f06e49b522e454703c9a5bd9572d823d6fb74f9af560cd84b437bbea430e5eb"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED93B167-A9BF-40C4-9150-3ACD8FA1796C/libtatsu.xcframework.zip", checksum: "4cdb8a3f875582356fcc12a44c342d5cf0b7eac8671d2ef9983cc6f98eeebe37"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED93B167-A9BF-40C4-9150-3ACD8FA1796C/libusbmuxd.xcframework.zip", checksum: "ad7fd071a8b38e2716f4926bea116e79499a4c7b10f008b98e09bdd05c4a19ea"),
    ]
)

