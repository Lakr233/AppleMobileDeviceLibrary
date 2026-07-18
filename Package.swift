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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38502169-7C4E-4611-B557-14F69872EEF2/libimobiledevice.xcframework.zip", checksum: "dfab7239019efe42d64880e7f1b0d5cc486faf3f56c9fd412dcb7f35e718b586"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38502169-7C4E-4611-B557-14F69872EEF2/libimobiledevice_glue.xcframework.zip", checksum: "1bf0de93d6e29a8d20c98f7565c3f3c516c2258e57cd83bd96b17ce1253cb667"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38502169-7C4E-4611-B557-14F69872EEF2/libplist.xcframework.zip", checksum: "bb4cc156e9a911ef7cf58ebe93979c6c84881fb4910a4da2e6d9e95290d97c4d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38502169-7C4E-4611-B557-14F69872EEF2/libtatsu.xcframework.zip", checksum: "102dff2ebaabf06a2fe0789c01ab10d18f62c6f9e77dcb6c754e12cf6e57e497"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38502169-7C4E-4611-B557-14F69872EEF2/libusbmuxd.xcframework.zip", checksum: "c0fae4aa8425f96c6673815b46a334e6df00bdcec22a406577063f828fc43d82"),
    ]
)

