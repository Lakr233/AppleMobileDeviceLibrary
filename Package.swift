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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FF6D5996-43BF-4CFD-A3F5-CF174C968BB7/libimobiledevice.xcframework.zip", checksum: "52c8f6b0bee063070db5a7a6a5ea5d75083bacba12cff7ae1ba33c39ed0d8f36"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FF6D5996-43BF-4CFD-A3F5-CF174C968BB7/libimobiledevice_glue.xcframework.zip", checksum: "7865ae4303537fcbb90744def28436d90d11eda41855b36d97033905c3bf6d5b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FF6D5996-43BF-4CFD-A3F5-CF174C968BB7/libplist.xcframework.zip", checksum: "58a4c7266fa63e547bc1465d96d45d8dfd7ab34c4496370db24c488664b7628e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FF6D5996-43BF-4CFD-A3F5-CF174C968BB7/libtatsu.xcframework.zip", checksum: "35c6eeb18ad9a0f3b37244c3143bdaa9aa6f87322bad6c5dfe804136625f05b4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FF6D5996-43BF-4CFD-A3F5-CF174C968BB7/libusbmuxd.xcframework.zip", checksum: "f006581900b79b24bcf647e1447ba90731004e746754166ec26d17bc3d4cb8be"),
    ]
)

