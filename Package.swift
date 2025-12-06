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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5FF434DD-ACA6-4AC5-A5F0-9A9CB8B05AF1/libimobiledevice.xcframework.zip", checksum: "b145721aa7d934f6ca378fd86c73d0a331c8a255830fafc5dfc97e49a1bf61fc"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5FF434DD-ACA6-4AC5-A5F0-9A9CB8B05AF1/libimobiledevice_glue.xcframework.zip", checksum: "1311a054ac1c63f6444befc73523a82399c559b2b486638686cafec2316e73c5"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5FF434DD-ACA6-4AC5-A5F0-9A9CB8B05AF1/libplist.xcframework.zip", checksum: "ba3470c721d79b89cfa938c835c87a20f63c898d4bf617a6e6cf7ac73c490f90"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5FF434DD-ACA6-4AC5-A5F0-9A9CB8B05AF1/libtatsu.xcframework.zip", checksum: "c2b80ba564bd5e7376bd154cbde2675bbc516620a3432e95d055f49c97994eaf"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5FF434DD-ACA6-4AC5-A5F0-9A9CB8B05AF1/libusbmuxd.xcframework.zip", checksum: "a4a023c2bd0ae4ab0f9f83d790c3465a6436318b69e911de662cb287cc2abb72"),
    ]
)

