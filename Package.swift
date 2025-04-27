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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FB026AC3-0B22-4BD9-ABEC-23914A81D25A/libimobiledevice.xcframework.zip", checksum: "ec3e8ac20081829f1b6ee3231c9b8961f3cd9beddefe9895185af03a24f280e4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FB026AC3-0B22-4BD9-ABEC-23914A81D25A/libimobiledevice_glue.xcframework.zip", checksum: "2c31a202f1ea9e8a5a50560b8ae9a3a1d726a5bde508aa88f11a8c4249da6f55"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FB026AC3-0B22-4BD9-ABEC-23914A81D25A/libplist.xcframework.zip", checksum: "e30e6ee4aa3b7e45c4db9d6a1afbd6636646ce831f416683851c869a09f3c9a1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FB026AC3-0B22-4BD9-ABEC-23914A81D25A/libtatsu.xcframework.zip", checksum: "03843cf52ad43139a23ff446c06b5c07af3cb5973ca20a2fce7f9222bd6ae318"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FB026AC3-0B22-4BD9-ABEC-23914A81D25A/libusbmuxd.xcframework.zip", checksum: "b3a418446dbbb779a5c8ba4e2d62f1efa8f5b4922066e046b62503cf79eb9721"),
    ]
)

