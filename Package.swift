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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6876DE81-0034-43C1-8AA4-9DB807827167/libimobiledevice.xcframework.zip", checksum: "789493870d4c5d03195c819958a371ec78f1246d7b2a843ab4f5e1a7bb20f540"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6876DE81-0034-43C1-8AA4-9DB807827167/libimobiledevice_glue.xcframework.zip", checksum: "ae2cc9c0998eb64767dbbc537065f5d56b1527638c2c598d3d7a94cf0b97c103"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6876DE81-0034-43C1-8AA4-9DB807827167/libplist.xcframework.zip", checksum: "c1bb6e5d6bd57d1b742361283d9e2fd99c91ac13037e3cc3c79040ec3dd5f441"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6876DE81-0034-43C1-8AA4-9DB807827167/libtatsu.xcframework.zip", checksum: "481d926290f1480e835b6354ca41097d128f6474ddb7e93541d57a3e33e40759"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6876DE81-0034-43C1-8AA4-9DB807827167/libusbmuxd.xcframework.zip", checksum: "2bbf6f70c1006689e9ed2196fcb3f2ba6ff2480b13516697de0c6c80771c8c7a"),
    ]
)

