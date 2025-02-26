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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0A9C8653-D625-4E34-B68E-A400513ACEB3/libimobiledevice.xcframework.zip", checksum: "be60d4c26c870d2afc096a325ad1c08d6b248aaaefd62e9de5337b8b17a80056"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0A9C8653-D625-4E34-B68E-A400513ACEB3/libimobiledevice_glue.xcframework.zip", checksum: "1a9a5683f3ad3a8bcda84ffce91f4f2334049bc999ea91965038a56f95c28d60"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0A9C8653-D625-4E34-B68E-A400513ACEB3/libplist.xcframework.zip", checksum: "99dc8381e41f0e14cdd58cb38cffa322b0ffd4eea54b06b50d87893104e46442"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0A9C8653-D625-4E34-B68E-A400513ACEB3/libtatsu.xcframework.zip", checksum: "5a7d729026156673b94abe1d8e92e5390522463aa7de8668198c15afb375597f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0A9C8653-D625-4E34-B68E-A400513ACEB3/libusbmuxd.xcframework.zip", checksum: "bc2ad489c40afe384581d21cc87eddd54222bfecc3ee9fe53a6329e532ed3f54"),
    ]
)

