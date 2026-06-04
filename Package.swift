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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E618BAF3-AAC3-4492-B0B5-C69856C3D83F/libimobiledevice.xcframework.zip", checksum: "10b3765ad63989e0a1b11499854c52df1e44fe71ac05ff0fa2116ffce47c8c6c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E618BAF3-AAC3-4492-B0B5-C69856C3D83F/libimobiledevice_glue.xcframework.zip", checksum: "d8dad007209417cd5d7222f4e99dbdbd4a5d4635d72ced2de3cb775fae703844"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E618BAF3-AAC3-4492-B0B5-C69856C3D83F/libplist.xcframework.zip", checksum: "7e37c378c664bdc143cc4e8221a84a846a40e2f0b47e1788dfddc98797cb179c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E618BAF3-AAC3-4492-B0B5-C69856C3D83F/libtatsu.xcframework.zip", checksum: "67b3723e51d97117f930908a4e2d8fd6bd0b2fe4b6d56d01a841bf7c6340eb80"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E618BAF3-AAC3-4492-B0B5-C69856C3D83F/libusbmuxd.xcframework.zip", checksum: "2ad37a791bc4a8e1379b73fb131febf387777cca32fb0f0e5bbcdb52baa14c2a"),
    ]
)

