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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.365049B6-1C7D-4F3D-81D2-415F18DD12A0/libimobiledevice.xcframework.zip", checksum: "60f8cd4ea20b895112c6e19cc95904db34de8f70eece70feb1dfd50ab4baa88e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.365049B6-1C7D-4F3D-81D2-415F18DD12A0/libimobiledevice_glue.xcframework.zip", checksum: "7a8c8103fc0445128d8111382b65265151ffc417fb5d128ce720957ff29434e5"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.365049B6-1C7D-4F3D-81D2-415F18DD12A0/libplist.xcframework.zip", checksum: "f7b8284095c1f973178f20eecb0ac4d4a8a5c3f349116c718f32cb35be5c4280"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.365049B6-1C7D-4F3D-81D2-415F18DD12A0/libusbmuxd.xcframework.zip", checksum: "1807662b4bf57817aeb2f1d2adfcb3c3b746d706c803ae7392d4a31e828fc1f1"),
    ]
)

