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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.142CA845-A5EA-4F5A-A2B1-5824FD842FAB/libimobiledevice.xcframework.zip", checksum: "fb5a17d90d39a0347d0ecc3ce8964a4ef212c35d54bd71dc6b30fc0eaaeb78d0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.142CA845-A5EA-4F5A-A2B1-5824FD842FAB/libimobiledevice_glue.xcframework.zip", checksum: "6447d8d221e234ea38e36fac4beaa982a6e52185af28c6c2a5d42e7bdb170e4d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.142CA845-A5EA-4F5A-A2B1-5824FD842FAB/libplist.xcframework.zip", checksum: "d014129ae9a19072500c0cf376ce0662c32f78dc7c790fccef6c42cb97f656e4"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.142CA845-A5EA-4F5A-A2B1-5824FD842FAB/libtatsu.xcframework.zip", checksum: "07fecd1b6b923ea7936611299620fcdeee13177b4b1b2857ba4f865b26ab6b19"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.142CA845-A5EA-4F5A-A2B1-5824FD842FAB/libusbmuxd.xcframework.zip", checksum: "c4157faa732528b113a1a3420a04c28bda6d93cf1a804b677269619fbb6130fb"),
    ]
)

