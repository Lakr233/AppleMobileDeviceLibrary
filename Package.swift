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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.790B6153-FD7B-437F-BEFB-5C5B39D5D21B/libimobiledevice.xcframework.zip", checksum: "6b62876131c6c6003a5274454ee5babaaa44b032bf3e28b9be7517025c5fd739"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.790B6153-FD7B-437F-BEFB-5C5B39D5D21B/libimobiledevice_glue.xcframework.zip", checksum: "46f77a895b8703c83585ff9534dea274d8d6028ed035572603fbf7f7f10460c9"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.790B6153-FD7B-437F-BEFB-5C5B39D5D21B/libplist.xcframework.zip", checksum: "7c37871ea7de6bcb7dd469db52f61e41ed2ac988764da8e6580a40188954a39e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.790B6153-FD7B-437F-BEFB-5C5B39D5D21B/libtatsu.xcframework.zip", checksum: "2ba9a3d135857f6f40688b8b09c0ee3343dc1f875cd4ec0dd3e2404f2c6d7815"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.790B6153-FD7B-437F-BEFB-5C5B39D5D21B/libusbmuxd.xcframework.zip", checksum: "f371bcd86da799ba24abf6d1b140bd1fbd93ac5bcabd2828b7c2e90709f394f2"),
    ]
)

