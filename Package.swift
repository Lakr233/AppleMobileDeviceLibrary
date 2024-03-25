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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D4DDC048-F3CF-48A6-B469-2A974CC821E0/libimobiledevice.xcframework.zip", checksum: "4e1c9c46598c180297f5d8cc63f50079bc1dbb8cdda80dfbffe167968f396af0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D4DDC048-F3CF-48A6-B469-2A974CC821E0/libimobiledevice_glue.xcframework.zip", checksum: "1cd15a49c09432c3e3e7d51f101d2635729e0e9f814d612cc798cf8a334be09a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D4DDC048-F3CF-48A6-B469-2A974CC821E0/libplist.xcframework.zip", checksum: "b1b270ab398f771398174e441b0e7a921123947f858884bf9dba6266cc61fb98"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D4DDC048-F3CF-48A6-B469-2A974CC821E0/libusbmuxd.xcframework.zip", checksum: "c25101c8361810ba2b95d77735684e2c26acd89d9c1440136d8be749dc2ede72"),
    ]
)

