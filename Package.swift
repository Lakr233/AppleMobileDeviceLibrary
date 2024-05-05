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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2AFC771E-DF26-48CF-8C87-EC9F84B5B7A0/libimobiledevice.xcframework.zip", checksum: "6a38d202754b844d03c1d3c74226dc67a6c5c104e1328a86e846d8e759621161"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2AFC771E-DF26-48CF-8C87-EC9F84B5B7A0/libimobiledevice_glue.xcframework.zip", checksum: "06f0196dcf89e982d07d7711c29855f7dbdc8fa604dd02d6ee26d988d17e2875"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2AFC771E-DF26-48CF-8C87-EC9F84B5B7A0/libplist.xcframework.zip", checksum: "68758c8de9fa8a7930ee2a18fd4f59f1a0e3f48ec647f98e320cffde7dca0d66"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2AFC771E-DF26-48CF-8C87-EC9F84B5B7A0/libusbmuxd.xcframework.zip", checksum: "a2dc4b15ecb52d4d8ab2f0b3135f9ccbaf79026d2adf11fff6d8b76c6e967dda"),
    ]
)

