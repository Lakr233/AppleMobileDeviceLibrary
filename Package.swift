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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C565FDFF-848C-4F4E-9303-CC3D94DF3F86/libimobiledevice.xcframework.zip", checksum: "e596df2e690365c3dffd4053f9a753f7c2799d6bfa113ca064bf46ef74d15735"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C565FDFF-848C-4F4E-9303-CC3D94DF3F86/libimobiledevice_glue.xcframework.zip", checksum: "1ee3b96e4a94455bc0024f254461302ae0b4bec6a7df8e02cc3ca8dd6b1f9526"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C565FDFF-848C-4F4E-9303-CC3D94DF3F86/libplist.xcframework.zip", checksum: "1d9525bb00b32afbc7a54e8c4456a3cf072edf6f953489acc383656e63fba93e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C565FDFF-848C-4F4E-9303-CC3D94DF3F86/libtatsu.xcframework.zip", checksum: "0978edb3e19791c0424f0bb3680a1287800a17193421c54f91e3c6c04cdf73cb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C565FDFF-848C-4F4E-9303-CC3D94DF3F86/libusbmuxd.xcframework.zip", checksum: "be2fff73eebe9835bd6522d194935ea0a1f26c97055e53418de66fffc82cb823"),
    ]
)

