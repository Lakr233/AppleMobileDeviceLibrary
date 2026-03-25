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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.88B44619-95D7-4C5F-919F-7DAA93C64E34/libimobiledevice.xcframework.zip", checksum: "04b0d31f0790b8521037028af246056aa1429e0595cfb2c08401cb36bb3ed798"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.88B44619-95D7-4C5F-919F-7DAA93C64E34/libimobiledevice_glue.xcframework.zip", checksum: "6e92217bf4cc5760badbd94c4f4699e87f2a363e9bd4aaaa27fa8c44c4fb62a5"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.88B44619-95D7-4C5F-919F-7DAA93C64E34/libplist.xcframework.zip", checksum: "5e8d99be9af1b46e88a848fbb7d458b207616b2c3c27cdf2f8996629e50f4bd4"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.88B44619-95D7-4C5F-919F-7DAA93C64E34/libtatsu.xcframework.zip", checksum: "667df84c5b89032c5686ecf3a72b78ba9bd04331c8b9faa8fa19c468da15c4e2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.88B44619-95D7-4C5F-919F-7DAA93C64E34/libusbmuxd.xcframework.zip", checksum: "b179667fa725e11575b5b0fd028e5013c2c2ea5e53a43aebd07ccccb2d7be85f"),
    ]
)

