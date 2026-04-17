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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D861F21A-D45A-4F01-9B0F-F7B788452873/libimobiledevice.xcframework.zip", checksum: "0e0c4b03cfac8ad2ddc2b13bbc396436963c5a54234413fc0239e8ad6169e92b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D861F21A-D45A-4F01-9B0F-F7B788452873/libimobiledevice_glue.xcframework.zip", checksum: "48c0148e8da8fa81bc3801cf3b2e1aaecb91fd0aef189166c6ec512d7ef02571"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D861F21A-D45A-4F01-9B0F-F7B788452873/libplist.xcframework.zip", checksum: "750d4b9e5352fa84d18222ee933a441fd29ee9e1c8c5e97229e4beb7adbfb8d5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D861F21A-D45A-4F01-9B0F-F7B788452873/libtatsu.xcframework.zip", checksum: "9f0c1ed54496336365f3741f854e259fb84032ef68eee70a32674e6775cf3ae7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D861F21A-D45A-4F01-9B0F-F7B788452873/libusbmuxd.xcframework.zip", checksum: "4dbd5a7fb6ee2f94d96f55409e50a7b585c35d0a8070e8a8db1973840ac7ccdf"),
    ]
)

