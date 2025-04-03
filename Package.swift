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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D32D0882-91FA-424E-A930-9B0B31619582/libimobiledevice.xcframework.zip", checksum: "d9a428f270f5ef5197208d1251e5bccf09bc2c34b60335136d8c192961e4441c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D32D0882-91FA-424E-A930-9B0B31619582/libimobiledevice_glue.xcframework.zip", checksum: "537529445a5bedd4291eec5f1c704d41e568d2fe1a86bf5956d5be21a1d82ed8"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D32D0882-91FA-424E-A930-9B0B31619582/libplist.xcframework.zip", checksum: "755993ffbbdb2bbd50b4afe0fe9faaed9bc214daba1d08abf28a0c6bb450fda3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D32D0882-91FA-424E-A930-9B0B31619582/libtatsu.xcframework.zip", checksum: "56c77e74b957741834498d6c71874ff97b621bc366c26736e351b407afc5e805"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D32D0882-91FA-424E-A930-9B0B31619582/libusbmuxd.xcframework.zip", checksum: "c2d64ea2c2195c0abf5b4c24670b9a352fac9cf184f63dfc1ea2d26c3fe26941"),
    ]
)

