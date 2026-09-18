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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A0C1F76A-C40C-4D4F-AFE5-75271BA29170/libimobiledevice.xcframework.zip", checksum: "a6a60c1d22a2388f01b01e361b6627d28ca84a6b204ee7e2c637d4d81768c6f6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A0C1F76A-C40C-4D4F-AFE5-75271BA29170/libimobiledevice_glue.xcframework.zip", checksum: "cb9ac0e5f070167ff806e038c3d29a533143d209c9880834f0e70737bd808771"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A0C1F76A-C40C-4D4F-AFE5-75271BA29170/libplist.xcframework.zip", checksum: "af0ceadc6521ac93c9d0099f9e55888621c3d68b39151a57cbf82ff8d7144aad"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A0C1F76A-C40C-4D4F-AFE5-75271BA29170/libtatsu.xcframework.zip", checksum: "734e1095b68fc352dd673642ad9c21cb841b069853365101ff32642ce333421f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A0C1F76A-C40C-4D4F-AFE5-75271BA29170/libusbmuxd.xcframework.zip", checksum: "4980e938cf9a47eceb51b2c4a33621d8e24f284e4a4f38552a3227ed75d2ea78"),
    ]
)

