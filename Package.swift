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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0F6CF3C0-C03A-4CC9-90C3-87971D1D03DB/libimobiledevice.xcframework.zip", checksum: "c20e76ae5bf8cdc594727ae5b11c6c72851f02f3d745be25d44df3a20b223f59"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0F6CF3C0-C03A-4CC9-90C3-87971D1D03DB/libimobiledevice_glue.xcframework.zip", checksum: "049737a1a67d84cd8da7750efb0bc552fc39e9f0b47c791e91f804f8cb8035e1"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0F6CF3C0-C03A-4CC9-90C3-87971D1D03DB/libplist.xcframework.zip", checksum: "eadd39c16b1a95178ca38acf8977ca55cfa600d3c9e8dc7af7fc6028e747ea2a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0F6CF3C0-C03A-4CC9-90C3-87971D1D03DB/libtatsu.xcframework.zip", checksum: "3a0b31afcb526348685e79992a6a090031cf32f4c5f6ebdc9309a193ff9867ad"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0F6CF3C0-C03A-4CC9-90C3-87971D1D03DB/libusbmuxd.xcframework.zip", checksum: "4816c35ae71d62fc4f9945fd49d07fa36e5035d5ad2f007bafab14f91137fdaf"),
    ]
)

