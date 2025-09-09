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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9C346DE5-72B2-4218-9485-E4259AC3A560/libimobiledevice.xcframework.zip", checksum: "ebd5c0f287f771855a821116aa8451db2e4b5ad1d88e5c633a2b6b86797c9321"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9C346DE5-72B2-4218-9485-E4259AC3A560/libimobiledevice_glue.xcframework.zip", checksum: "c42f669cecac82bd0ee3b500a9964130a213238de1a97a7a46a62e3961e18176"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9C346DE5-72B2-4218-9485-E4259AC3A560/libplist.xcframework.zip", checksum: "90add81817117d9637da2590b11e5d3f088480ca3cca6534d2356a1866f6e4cb"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9C346DE5-72B2-4218-9485-E4259AC3A560/libtatsu.xcframework.zip", checksum: "4206fea32fbeefd86da0e1c8fd40e75850dc8e7310d6fbf1db5bd87fb3509815"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9C346DE5-72B2-4218-9485-E4259AC3A560/libusbmuxd.xcframework.zip", checksum: "736475f00c598121e1b5853ddf5eead0c45dc757a62490f2945c8bac14e18e01"),
    ]
)

