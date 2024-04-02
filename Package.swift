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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E7C810E0-D18F-40A9-9B1C-894DFC589D75/libimobiledevice.xcframework.zip", checksum: "d5465994e56daf69d443b4beaf30d5d723eb96792a094e31007d1b1741c33c02"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E7C810E0-D18F-40A9-9B1C-894DFC589D75/libimobiledevice_glue.xcframework.zip", checksum: "3045b4c3e1724d1d26c244cd64c904e022121512d2c429baa83e206ce85ae21b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E7C810E0-D18F-40A9-9B1C-894DFC589D75/libplist.xcframework.zip", checksum: "d978c6e2623c9a3fe2ee56e58e7747bd7dde6d455749c9cb8ef025561429ebac"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E7C810E0-D18F-40A9-9B1C-894DFC589D75/libusbmuxd.xcframework.zip", checksum: "1e4e950584fa2f1b769102165c486db7fc24d032bebee37af1353d4964e15e38"),
    ]
)

