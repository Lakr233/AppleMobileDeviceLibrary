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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4B4969DD-96FB-41DB-B049-F4F922721E3C/libimobiledevice.xcframework.zip", checksum: "e465574b477059bfaa42bf3a1014ecfdf9a78ec8079985395343b293ba9a6e01"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4B4969DD-96FB-41DB-B049-F4F922721E3C/libimobiledevice_glue.xcframework.zip", checksum: "234fba917847a7c3bd8c99e41acec3c93be94ad54021916baca550123fc70324"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4B4969DD-96FB-41DB-B049-F4F922721E3C/libplist.xcframework.zip", checksum: "41a62b6e2426464d5abd9328d36ba1f7d297c993a3924fbfe5ca7b2d3b661fe0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4B4969DD-96FB-41DB-B049-F4F922721E3C/libtatsu.xcframework.zip", checksum: "1332395e79590f974d08161f0a4fb5adb021a0218f6132f48b2aed546641c53c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4B4969DD-96FB-41DB-B049-F4F922721E3C/libusbmuxd.xcframework.zip", checksum: "8d9316a47ddb01c7c3a54e13ef3363d37e4dbe5feaaffe2154410e7f1ef836c8"),
    ]
)

