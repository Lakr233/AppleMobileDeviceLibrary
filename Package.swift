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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A132FF64-74B7-428A-9F66-2C9AD0DE9D3C/libimobiledevice.xcframework.zip", checksum: "d920f16ce9f673a6cb460e0086d2412efd2a3bb6ad449623b96083fbaca4b688"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A132FF64-74B7-428A-9F66-2C9AD0DE9D3C/libimobiledevice_glue.xcframework.zip", checksum: "f3479431941433aa305c92d917743ed35e2ee191d2b40a1bc39ca597412e02b4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A132FF64-74B7-428A-9F66-2C9AD0DE9D3C/libplist.xcframework.zip", checksum: "59603f00d822e009c0a0c0018b117c923ef772f2239e0f58ceaabd5accf1045a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A132FF64-74B7-428A-9F66-2C9AD0DE9D3C/libtatsu.xcframework.zip", checksum: "a62ff494b2a7070e1c1206b730e8f983c05aefb0efb86cdc920c981ecda1140f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A132FF64-74B7-428A-9F66-2C9AD0DE9D3C/libusbmuxd.xcframework.zip", checksum: "218ff58cbc4693c304cf91ae74f48289ba19a424c560ba8b9f8ab4f1a7d4a791"),
    ]
)

