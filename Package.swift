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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EDEE2A00-FB42-4F6B-A8FA-24A99C747BDF/libimobiledevice.xcframework.zip", checksum: "8ea8aea2c2ec0b95db21e06999894fea5467b1efdaff2de72e505a74809cce16"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EDEE2A00-FB42-4F6B-A8FA-24A99C747BDF/libimobiledevice_glue.xcframework.zip", checksum: "784e6647f68bf5eb0701474afb001c02affde726d793cb7b7d39c47dcbd3e591"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EDEE2A00-FB42-4F6B-A8FA-24A99C747BDF/libplist.xcframework.zip", checksum: "1fca9fec7baed400e1f782403184568bec6d265fb85e821720885b7b182f36ee"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EDEE2A00-FB42-4F6B-A8FA-24A99C747BDF/libtatsu.xcframework.zip", checksum: "f5d5359703123133d2a74d4ed9ad58d54f9b10498f5ea9130d00770a7a22bf41"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EDEE2A00-FB42-4F6B-A8FA-24A99C747BDF/libusbmuxd.xcframework.zip", checksum: "28a296f138b9366bfb17279c973222266b9735ce8bdca57be7ffd70f365193d2"),
    ]
)

