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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8E117244-B50C-46A6-B9BD-F6DFFAA36E1C/libimobiledevice.xcframework.zip", checksum: "b08af46ae93f3e3114224ebddf4be4b39bd48b11a7d7122ea96bc040e721cdec"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8E117244-B50C-46A6-B9BD-F6DFFAA36E1C/libimobiledevice_glue.xcframework.zip", checksum: "b0235ed4a8d9e5de33e50d54e5abc4cd0da7fb5d12178b155bd8eaad6f5a7493"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8E117244-B50C-46A6-B9BD-F6DFFAA36E1C/libplist.xcframework.zip", checksum: "9b480639afec5aa9e88725a658e0354686f9e0bc179a6687ca36ae02795c910a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8E117244-B50C-46A6-B9BD-F6DFFAA36E1C/libtatsu.xcframework.zip", checksum: "0f51c6d8148a4f9641728cb347bdd73003a61a00c26301ce874531e323c579bb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8E117244-B50C-46A6-B9BD-F6DFFAA36E1C/libusbmuxd.xcframework.zip", checksum: "7821cc526221efa9f08ab18fbb5cca57a5df299948e2b316fd7996517c6c23c8"),
    ]
)

