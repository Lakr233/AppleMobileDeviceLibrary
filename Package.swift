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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.26924A4A-2907-4DE8-8DFB-21214909095A/libimobiledevice.xcframework.zip", checksum: "15b71fda6b4db627eb1e6041671a67c4b0c89fcbc5f037c410fb41f2b553cfba"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.26924A4A-2907-4DE8-8DFB-21214909095A/libimobiledevice_glue.xcframework.zip", checksum: "31d460cd3c6a587e6bb33c0ba48fec39c78ff69f8279d6d39f48ef3ba3d076f2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.26924A4A-2907-4DE8-8DFB-21214909095A/libplist.xcframework.zip", checksum: "851b4546418194b1190ed431067c043d8e5cd115b01256b48f2adce44902ac93"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.26924A4A-2907-4DE8-8DFB-21214909095A/libtatsu.xcframework.zip", checksum: "0ef6a94688ffaaf1ab40d488e24985f1a9c2e69fd35913e4f23f486b141c3714"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.26924A4A-2907-4DE8-8DFB-21214909095A/libusbmuxd.xcframework.zip", checksum: "c74f7c70bb56581571e331bc13c83b1309bfd2957eb54096fb2c9f66007bcf53"),
    ]
)

