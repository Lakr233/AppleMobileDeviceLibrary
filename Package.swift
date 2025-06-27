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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F9B4CA80-F75E-4434-95B2-DBC58F8360DD/libimobiledevice.xcframework.zip", checksum: "d25ec1ba5a86befc0635116131a5a53658e377d9314b9fcab936c6a66c096b19"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F9B4CA80-F75E-4434-95B2-DBC58F8360DD/libimobiledevice_glue.xcframework.zip", checksum: "582bc6237e1b21ca09d787124f867ae69826f2d9a4e94f22cce9f28e99edf94a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F9B4CA80-F75E-4434-95B2-DBC58F8360DD/libplist.xcframework.zip", checksum: "d7971bfa02f223f0892377a8789c71a83d5628b42781b9c68318b2a108f26ba0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F9B4CA80-F75E-4434-95B2-DBC58F8360DD/libtatsu.xcframework.zip", checksum: "7cf3b720049a8b74046a4e5a1e834c397a9a41e6261b7d94f74c29d14db18139"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F9B4CA80-F75E-4434-95B2-DBC58F8360DD/libusbmuxd.xcframework.zip", checksum: "7ab95723c0fb0f3ab1adbf8e59f3888473ff864c2380c4eb6533fff7df37ac5a"),
    ]
)

