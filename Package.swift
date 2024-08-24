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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.22BE4229-94FD-4C2C-8E75-7422440D3494/libimobiledevice.xcframework.zip", checksum: "8f2c9a99808c8ce09f3d64f4b4993e5000d5afd55f2397a5ae3f6f0ff65d7abe"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.22BE4229-94FD-4C2C-8E75-7422440D3494/libimobiledevice_glue.xcframework.zip", checksum: "039cfac0b28104ada16cb568e368a865b2304aed295eaa090e858807d77b4ef3"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.22BE4229-94FD-4C2C-8E75-7422440D3494/libplist.xcframework.zip", checksum: "21c61cb424dd6f46ccddf324d4783173a6185e26d67ceeeceed49891f2efdcc1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.22BE4229-94FD-4C2C-8E75-7422440D3494/libtatsu.xcframework.zip", checksum: "547ed9b714d578259c43ceb29b9f99e1a8c201e5884e4eeb187a68351aa92c10"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.22BE4229-94FD-4C2C-8E75-7422440D3494/libusbmuxd.xcframework.zip", checksum: "89d3ece139f7abba198651f2ee15a61d0ecbd27cd4e94b63c494f717c965e8d5"),
    ]
)

