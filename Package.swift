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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDD76B08-1CD1-47E7-89EC-62E08D04CEF8/libimobiledevice.xcframework.zip", checksum: "3f40837b22da38afae3ca537d4d51d6d0054998a1c2ed550f83170452c53201d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDD76B08-1CD1-47E7-89EC-62E08D04CEF8/libimobiledevice_glue.xcframework.zip", checksum: "07aad6690adc12021be42ed79d1ad18c3bc95ad5bc73eae3d1320e18dc446e62"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDD76B08-1CD1-47E7-89EC-62E08D04CEF8/libplist.xcframework.zip", checksum: "d12af816ef2a271b05087b6a496a92f9765dfb890d7d803e6ea9885279d1d08d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDD76B08-1CD1-47E7-89EC-62E08D04CEF8/libtatsu.xcframework.zip", checksum: "ce6abe54ae98c36ae8b8259f6ffddd77bfd2374165c7265c59710db17c22cb5a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDD76B08-1CD1-47E7-89EC-62E08D04CEF8/libusbmuxd.xcframework.zip", checksum: "d178bc195e81bb20f3f908c46ccdfec55fb84a8f7ca84fa3663238d3fb047ae6"),
    ]
)

