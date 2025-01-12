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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.001A27BA-C0F8-4AE6-A63A-9083103CF123/libimobiledevice.xcframework.zip", checksum: "c83b11fa1ba5be9e99b873338b361e239565dd973270171955f6b4974c83e23c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.001A27BA-C0F8-4AE6-A63A-9083103CF123/libimobiledevice_glue.xcframework.zip", checksum: "d12682958e262102cafd2dcc8273cbff81a51b24025dc78b3ab2f19a835de384"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.001A27BA-C0F8-4AE6-A63A-9083103CF123/libplist.xcframework.zip", checksum: "523bf61130aa06987e65fb912b7ab2127e5f6dd4be40aee34fe9f6c67cb8005d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.001A27BA-C0F8-4AE6-A63A-9083103CF123/libtatsu.xcframework.zip", checksum: "8bc57a1f30cc6ea017b06212f04149c08f4ec49ecfda8f0f865a98824b0f71cf"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.001A27BA-C0F8-4AE6-A63A-9083103CF123/libusbmuxd.xcframework.zip", checksum: "da9faa8cadc9ca74cd4da741b26029b85ce1c77d0614c800e68125ebdd124794"),
    ]
)

