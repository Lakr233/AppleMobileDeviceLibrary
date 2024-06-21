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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.989028B9-296E-44B0-A47E-20AAC71775B1/libimobiledevice.xcframework.zip", checksum: "d26b4a2b47ea72802839e3fddf75c393d77084994b337413dbf3d67a1dcec7c1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.989028B9-296E-44B0-A47E-20AAC71775B1/libimobiledevice_glue.xcframework.zip", checksum: "d60cb2a1b9c1b916582358b26dba4bb5d457615d246bf755d866787fcd821d19"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.989028B9-296E-44B0-A47E-20AAC71775B1/libplist.xcframework.zip", checksum: "ac4ac3235a2e2a0bd0782114dd18dffee3bfbd9088044b8300513c020d0efb96"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.989028B9-296E-44B0-A47E-20AAC71775B1/libusbmuxd.xcframework.zip", checksum: "8a80e805c6b2f5f2a4e4632b2ca9715a784efc8f93c48ad6849712d2ebb5eae6"),
    ]
)

