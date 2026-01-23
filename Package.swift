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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.17CBFDE6-0BB4-4EBE-B04B-ECD2257C3226/libimobiledevice.xcframework.zip", checksum: "5fbead5e97eb734d7227556dd3f1a155af354d8d6969c16aa0a5aff799806f61"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.17CBFDE6-0BB4-4EBE-B04B-ECD2257C3226/libimobiledevice_glue.xcframework.zip", checksum: "da81e6e29701a3bf750a4bb93e66bd4301258ced8623aadde53878da3c11ec0f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.17CBFDE6-0BB4-4EBE-B04B-ECD2257C3226/libplist.xcframework.zip", checksum: "d4d9603adb22ca397a172cd9fced294f38082c5054754947a6dfdd1d03dafb5d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.17CBFDE6-0BB4-4EBE-B04B-ECD2257C3226/libtatsu.xcframework.zip", checksum: "28d1e774788b78c0d8badff4df15cb4dbac1d171c0d66d287382c55e5e69fa80"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.17CBFDE6-0BB4-4EBE-B04B-ECD2257C3226/libusbmuxd.xcframework.zip", checksum: "ce6db290942d0cae9c612a73bb8c534bb186c54689f4a07085da8d4815aed1aa"),
    ]
)

