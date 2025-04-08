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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9DDB3E17-54C8-4FBD-870B-D146C9E14D33/libimobiledevice.xcframework.zip", checksum: "084dbe7628071b6364f1c43ee6e43e35b91df2e2cde99ad4e6ea49cf8f409b23"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9DDB3E17-54C8-4FBD-870B-D146C9E14D33/libimobiledevice_glue.xcframework.zip", checksum: "89f7d8f514c46c571b2a2198a93d983085a6bf1a3c643e1e1142d484af141a47"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9DDB3E17-54C8-4FBD-870B-D146C9E14D33/libplist.xcframework.zip", checksum: "6a0221b5c851b60fde6d7093cd7340e4b1c0cd706e9ad51ea20135fca63ce70e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9DDB3E17-54C8-4FBD-870B-D146C9E14D33/libtatsu.xcframework.zip", checksum: "86a0b72f063a9f99055eee5cd02b363da396b4f83b8c8d4f093e2b98dc260958"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9DDB3E17-54C8-4FBD-870B-D146C9E14D33/libusbmuxd.xcframework.zip", checksum: "c038ecbbca42407195c865717efd4abaf6e9dbe50ba0e29b946c1e6dd8b0cb2c"),
    ]
)

