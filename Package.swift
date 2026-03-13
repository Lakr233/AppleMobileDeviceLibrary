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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D78C4454-9B3F-4D10-97D2-A52A14A952F0/libimobiledevice.xcframework.zip", checksum: "6f1a4f543a9e2359d09172f4d94124d0943ba02ea35d91811ca2b09bcf403494"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D78C4454-9B3F-4D10-97D2-A52A14A952F0/libimobiledevice_glue.xcframework.zip", checksum: "ec8ed0d64ec3cd86f6a6be31d2e7e83e1609d873505fc3b3faede338eac8f2f4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D78C4454-9B3F-4D10-97D2-A52A14A952F0/libplist.xcframework.zip", checksum: "ad6f81263e5e947c94eb7f8cb44891a91fa4c4aeea1a088f5b955a5c1bf23710"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D78C4454-9B3F-4D10-97D2-A52A14A952F0/libtatsu.xcframework.zip", checksum: "d2d90d5b9192991d1ceff0ed27914d0422c6405d84db882fba039c947fd3f9a3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D78C4454-9B3F-4D10-97D2-A52A14A952F0/libusbmuxd.xcframework.zip", checksum: "c000d5ee6b4984d1e8e8e78e8208bede29d2d75cbf796a37a00952368915f306"),
    ]
)

