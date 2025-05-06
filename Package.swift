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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F7064DF0-27A6-445E-A6BB-4370E1A6C624/libimobiledevice.xcframework.zip", checksum: "5aa31bd4cd909498ec2d7fc50172da491936ea0fe3ee08792c63569b59ec446e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F7064DF0-27A6-445E-A6BB-4370E1A6C624/libimobiledevice_glue.xcframework.zip", checksum: "fb57c8bb9ce6d46ff3170f0a2049f902b431dcd7e5f4dff52eeee320e3c847d2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F7064DF0-27A6-445E-A6BB-4370E1A6C624/libplist.xcframework.zip", checksum: "440a445ee0d4f566b343ad027d728d1111690501f6f12ce35663e37bea76c015"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F7064DF0-27A6-445E-A6BB-4370E1A6C624/libtatsu.xcframework.zip", checksum: "d53ccf11d767c2b4e587775414e77432d55d6cb91286c268f0b1965f5126df8a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F7064DF0-27A6-445E-A6BB-4370E1A6C624/libusbmuxd.xcframework.zip", checksum: "b73af765412a1c5e9ce005b9fa4c4028b5592345697116ddf54c5431b7f94155"),
    ]
)

