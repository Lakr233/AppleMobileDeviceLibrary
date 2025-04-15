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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0210304D-1E6F-4F57-B5FF-1A5C245FBDB3/libimobiledevice.xcframework.zip", checksum: "d0a0688d7f5f8fb664369d6750f713c93ce9e067b9eb250582aecad1c8fd13ba"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0210304D-1E6F-4F57-B5FF-1A5C245FBDB3/libimobiledevice_glue.xcframework.zip", checksum: "111cd75685cb6b8998e442d43e81006cc68b0977fa1b27642a9a2d08bb2989dd"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0210304D-1E6F-4F57-B5FF-1A5C245FBDB3/libplist.xcframework.zip", checksum: "68a8a6d38cb939046292385cdb79522e0da4138b32e489a37db9d5c01725fdf8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0210304D-1E6F-4F57-B5FF-1A5C245FBDB3/libtatsu.xcframework.zip", checksum: "5b69abdb868eca5fe2494e65b44b970c1b33036a76588546bba2d4ad6e39a9d1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0210304D-1E6F-4F57-B5FF-1A5C245FBDB3/libusbmuxd.xcframework.zip", checksum: "f0628d51832a1451914917085bc939b4c214a05d8bd195db84b53555fe0806f6"),
    ]
)

