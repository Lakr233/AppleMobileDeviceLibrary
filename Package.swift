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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6DB3A8F1-5A2A-4629-886E-5219A0531DD2/libimobiledevice.xcframework.zip", checksum: "fed170b33519d47d299014d09e5d1619276a6e8f956fb40a29026270520d44dd"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6DB3A8F1-5A2A-4629-886E-5219A0531DD2/libimobiledevice_glue.xcframework.zip", checksum: "0dbfa5125b3ef83805f7a604a2e3274d5d129f8b42da736571ba081a571482c2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6DB3A8F1-5A2A-4629-886E-5219A0531DD2/libplist.xcframework.zip", checksum: "aba82a185bea56f28d6ee72a072b81efbabeb9fcca7b326400b22d6a006ca444"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6DB3A8F1-5A2A-4629-886E-5219A0531DD2/libtatsu.xcframework.zip", checksum: "6a0b4828762497c92350b4a4168588159f56f70514803892eb71d8ac8f3256a4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6DB3A8F1-5A2A-4629-886E-5219A0531DD2/libusbmuxd.xcframework.zip", checksum: "01576ecb774a62e060013d850dac1955fe350fa0950821ecdbd4211ba6d36e43"),
    ]
)

