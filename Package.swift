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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.73291F11-A08D-4EF3-B61F-732EFC07E169/libimobiledevice.xcframework.zip", checksum: "2d5c39f434eace58872c3c0e5c12c8fb6873b2934345d44a03c63f32dc38618d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.73291F11-A08D-4EF3-B61F-732EFC07E169/libimobiledevice_glue.xcframework.zip", checksum: "77ce48ba5e80f072a88dbf8fd8f8adebac951d0329b857e4e3458fa8a6fd101f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.73291F11-A08D-4EF3-B61F-732EFC07E169/libplist.xcframework.zip", checksum: "8dea6ba1ca63497a4afb30f5389406a01d4b52a56be422a44b972aef94165f40"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.73291F11-A08D-4EF3-B61F-732EFC07E169/libtatsu.xcframework.zip", checksum: "4229daac4e504463a8a91c62f5c63456d6b21fa326e105d9c2934527ad154f87"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.73291F11-A08D-4EF3-B61F-732EFC07E169/libusbmuxd.xcframework.zip", checksum: "06f4876d09f491c3bdc907284b7a5f690ea638f4600bae39e2b132cf18322e04"),
    ]
)

