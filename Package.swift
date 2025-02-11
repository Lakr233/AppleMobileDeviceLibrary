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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6E5E3FA8-294F-4BB4-8A39-55F3DDD22422/libimobiledevice.xcframework.zip", checksum: "fce1c89bfc7ccdaa37e2f8a6c2e363549268fe1202372376346d3c45fc554003"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6E5E3FA8-294F-4BB4-8A39-55F3DDD22422/libimobiledevice_glue.xcframework.zip", checksum: "15503d95753c820c434d73c99e30cbd678c029108a760220cb35cdcd83471a0b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6E5E3FA8-294F-4BB4-8A39-55F3DDD22422/libplist.xcframework.zip", checksum: "30898d2c659bff07a42a0bdacf4f3782c0b1c12006c186f6e61e8777323d1c8b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6E5E3FA8-294F-4BB4-8A39-55F3DDD22422/libtatsu.xcframework.zip", checksum: "f0c59b07c0db53a25be916ce34d9d0c450e7b08e738223e7a60e1421b3c6f560"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6E5E3FA8-294F-4BB4-8A39-55F3DDD22422/libusbmuxd.xcframework.zip", checksum: "5daa32b5fbbaf646720c99d468d6084bb64d2d9c7c1cc4a513e479134f2ac5b2"),
    ]
)

