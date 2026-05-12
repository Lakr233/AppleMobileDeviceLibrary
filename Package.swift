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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B3810EE6-1093-4647-A3C5-16D69D51FD68/libimobiledevice.xcframework.zip", checksum: "11defaa4230ea909ebd354fdd4114bf77ee9ff17520a937a7cbcda9246728edc"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B3810EE6-1093-4647-A3C5-16D69D51FD68/libimobiledevice_glue.xcframework.zip", checksum: "66b98cf4e32ece6c0cc96ad14d3eec7363b18cfe287a6b1b590bc3a497454c3b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B3810EE6-1093-4647-A3C5-16D69D51FD68/libplist.xcframework.zip", checksum: "a84d63e8da4f81a69683cd1e258ff3e439c4e3a4d75881e35fa1b8f07324346f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B3810EE6-1093-4647-A3C5-16D69D51FD68/libtatsu.xcframework.zip", checksum: "f4fa2187fdff0f988a9025c99eeca68b79bb82298a417ce412cf505fd6ba5745"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B3810EE6-1093-4647-A3C5-16D69D51FD68/libusbmuxd.xcframework.zip", checksum: "bb36dd29fa6b9e7276be86e8b1e1ac35d511152faa1595fb6bfc38b119120086"),
    ]
)

