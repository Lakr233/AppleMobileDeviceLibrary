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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0E9A9AD7-3A49-468E-8E15-A3CCCF76FD0E/libimobiledevice.xcframework.zip", checksum: "d7c89e9d68670e56cd389f1cd3b58d15cac50d0ca2ae2ec300ba9164d38834df"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0E9A9AD7-3A49-468E-8E15-A3CCCF76FD0E/libimobiledevice_glue.xcframework.zip", checksum: "f4b7067f650f9b81dba6db5e0c5cbf45199b1bb5d400c48be10d86750e18cab9"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0E9A9AD7-3A49-468E-8E15-A3CCCF76FD0E/libplist.xcframework.zip", checksum: "a5aabdec0aefc6de74658d0e6fa007c26b42dadebfac31e6204ccb2a98429ccc"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0E9A9AD7-3A49-468E-8E15-A3CCCF76FD0E/libtatsu.xcframework.zip", checksum: "a14f7e4eb37768be7925a0a3b03677c665fb93094071be14908421e573a0e246"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0E9A9AD7-3A49-468E-8E15-A3CCCF76FD0E/libusbmuxd.xcframework.zip", checksum: "8d21c145d542149135769d49972ce5f96c6a545f09c6c38a053ae6e7ee7081d2"),
    ]
)

