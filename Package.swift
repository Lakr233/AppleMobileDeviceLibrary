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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC956724-38CF-4D6B-9675-2D6AA5879971/libimobiledevice.xcframework.zip", checksum: "5d56abd39707ac4f3ad69b53a58254cf6721534b95d18432a654783489b85af7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC956724-38CF-4D6B-9675-2D6AA5879971/libimobiledevice_glue.xcframework.zip", checksum: "94c1293607763a597e3a4cc01182df0a819978a297649d5ff82a985709477b70"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC956724-38CF-4D6B-9675-2D6AA5879971/libplist.xcframework.zip", checksum: "5a3467747956af7e7d443d679c43ebd533ba484bff468c9feffc0d0bdcae5c24"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC956724-38CF-4D6B-9675-2D6AA5879971/libtatsu.xcframework.zip", checksum: "f24264058fefee1728d0704da0d7bb9e38718869fd370c310bf57c9780ada84c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC956724-38CF-4D6B-9675-2D6AA5879971/libusbmuxd.xcframework.zip", checksum: "f05f4596e65eceb5a5067d32f7f6e1c20051b28e41ca8d788c3cb62acb423fb2"),
    ]
)

