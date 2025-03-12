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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC27E9E7-198C-47E7-A049-6B03E3A003EA/libimobiledevice.xcframework.zip", checksum: "e9a86d67c493f5f65a0a96bc3458c3499b5bfab19cb6b082b0611f174fe51cc1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC27E9E7-198C-47E7-A049-6B03E3A003EA/libimobiledevice_glue.xcframework.zip", checksum: "2f691d096e582155bfa7f87335b88658922ff9992b32ba709b9f8a3974877645"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC27E9E7-198C-47E7-A049-6B03E3A003EA/libplist.xcframework.zip", checksum: "baa91c2db5cef67f64809bbcc7e0e32f186ee76306038cc51e495a3eeb199f93"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC27E9E7-198C-47E7-A049-6B03E3A003EA/libtatsu.xcframework.zip", checksum: "83b7c3aebd8b5befef24c4e9d40573a2abe723e4be6a1e2efe49f0fcf8c745e5"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC27E9E7-198C-47E7-A049-6B03E3A003EA/libusbmuxd.xcframework.zip", checksum: "af45f07f327cd3eb9e17443f5ffc23b32f67844f9e23934d5de3e5cc0277b936"),
    ]
)

