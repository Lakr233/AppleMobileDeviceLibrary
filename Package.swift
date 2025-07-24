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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FCD31AD9-FEDE-47FC-9E9F-FAE6AEB822E1/libimobiledevice.xcframework.zip", checksum: "4193a726a243fc78fb2c217139413044a321d0d9630b106a1a863ee82bb4b470"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FCD31AD9-FEDE-47FC-9E9F-FAE6AEB822E1/libimobiledevice_glue.xcframework.zip", checksum: "49bc69699ef114626f92e181ca359db918ca222d6d8d79b33c5479cdcfb20417"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FCD31AD9-FEDE-47FC-9E9F-FAE6AEB822E1/libplist.xcframework.zip", checksum: "a7ebf7014d207d07f8c5e8c483ae14ca3252945d03d49f9ec1b1704ec30b5a01"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FCD31AD9-FEDE-47FC-9E9F-FAE6AEB822E1/libtatsu.xcframework.zip", checksum: "7750dc258055fb6855df12694bc5c750ca610ddbc9554416ad390aff63de38d1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FCD31AD9-FEDE-47FC-9E9F-FAE6AEB822E1/libusbmuxd.xcframework.zip", checksum: "2dfaef14d9dd81421422294c14dadd32ae1185f5352159196ca264adf488319e"),
    ]
)

