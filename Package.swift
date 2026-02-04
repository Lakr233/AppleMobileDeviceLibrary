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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.371F8A8B-6082-4003-9212-2881E150B589/libimobiledevice.xcframework.zip", checksum: "76e2d53a913fae9bde9d70981ccb357e7f8484dde3bfa53c872943ed145ddce3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.371F8A8B-6082-4003-9212-2881E150B589/libimobiledevice_glue.xcframework.zip", checksum: "bd375546e52c1ecb6d69abdf27e2fbffeb1314592dd1c2ebe25add3e96e8cf08"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.371F8A8B-6082-4003-9212-2881E150B589/libplist.xcframework.zip", checksum: "6a639cfd06ac65465fb8aa6516b97338c7dd8f89cd0676d6c402d155a2fe9f6f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.371F8A8B-6082-4003-9212-2881E150B589/libtatsu.xcframework.zip", checksum: "c00c97e6a8fdd1bcfa64f7388da57658d17f8d06d3afbcdb0a8d8975b7d08a22"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.371F8A8B-6082-4003-9212-2881E150B589/libusbmuxd.xcframework.zip", checksum: "f86edd11cf8f55922ab91318060a2db7fba02010fdb537779bc0420f5c85bd19"),
    ]
)

