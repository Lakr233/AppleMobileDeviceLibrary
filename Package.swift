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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CD0B0016-F1DD-4841-B1E8-8E26909CD073/libimobiledevice.xcframework.zip", checksum: "76177ad125c26d7cd6c4379cb1b67fb7056d431b8d7338f88ab44bc835eaaa76"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CD0B0016-F1DD-4841-B1E8-8E26909CD073/libimobiledevice_glue.xcframework.zip", checksum: "5bbbf2e3b1a22dadd53eada2799a727b0249832729a45c31f8d860478097847b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CD0B0016-F1DD-4841-B1E8-8E26909CD073/libplist.xcframework.zip", checksum: "492593aa5ea9cca4e6fc7313956891f94128a0d8047838f546442341bcdbd048"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CD0B0016-F1DD-4841-B1E8-8E26909CD073/libusbmuxd.xcframework.zip", checksum: "aab719693d40b374272f85168ced7ed330075f6cf7c70809b605bf09f029ddbb"),
    ]
)

