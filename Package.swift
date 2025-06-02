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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.787D4BFF-9D72-4D7A-8B56-BF9A1F36B789/libimobiledevice.xcframework.zip", checksum: "c40512df6e9eec31b141c3e834e08c48e84cb05d1690a49c20935c678977535d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.787D4BFF-9D72-4D7A-8B56-BF9A1F36B789/libimobiledevice_glue.xcframework.zip", checksum: "9d244087f17018929e25367957b974b1f1723bbad8bd2ec726f43820d433ac66"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.787D4BFF-9D72-4D7A-8B56-BF9A1F36B789/libplist.xcframework.zip", checksum: "c56c7ce7e4d67a3b4c91b607328f1d78f3b4d9153843238d0d3c47bcbdd268ba"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.787D4BFF-9D72-4D7A-8B56-BF9A1F36B789/libtatsu.xcframework.zip", checksum: "b3e3fa56d6adb14025050eac0ababb22e94632461966c40c8e408c3ee756be65"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.787D4BFF-9D72-4D7A-8B56-BF9A1F36B789/libusbmuxd.xcframework.zip", checksum: "d074761811325c4461683becaf2e467b27c66430abe1f9b239ed4d3969c54a33"),
    ]
)

