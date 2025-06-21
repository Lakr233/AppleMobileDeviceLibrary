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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.25C05D81-6F0B-4E5F-B8F9-38778066CB6C/libimobiledevice.xcframework.zip", checksum: "7699aec659bea60921e89dbd0411646f98aca595c9a55e0195302ebd7af08c41"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.25C05D81-6F0B-4E5F-B8F9-38778066CB6C/libimobiledevice_glue.xcframework.zip", checksum: "d693838a107d1ba04e6d21e099f611826bf58a9651eb69b8da72cb1822e4cb2f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.25C05D81-6F0B-4E5F-B8F9-38778066CB6C/libplist.xcframework.zip", checksum: "91a371e34655198228dbcbe8329c672d7556d734315d5e4307dc0885a8d876b0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.25C05D81-6F0B-4E5F-B8F9-38778066CB6C/libtatsu.xcframework.zip", checksum: "841d1e0e372489175b0a13814ff83a4bac0ce53ea32dbfc6c916db781003b8df"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.25C05D81-6F0B-4E5F-B8F9-38778066CB6C/libusbmuxd.xcframework.zip", checksum: "3e14ea65f455b55d6414cac4ec76599cd1378904ee462adfae90c0f52053e907"),
    ]
)

