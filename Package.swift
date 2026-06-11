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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2FA6716D-8B51-4D38-BAB7-ADA2DFE23C76/libimobiledevice.xcframework.zip", checksum: "3824d98b49753f3a6139f82aec7d5f85516a29727c9486d98acb1b0b4150b40c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2FA6716D-8B51-4D38-BAB7-ADA2DFE23C76/libimobiledevice_glue.xcframework.zip", checksum: "a75f1933226bed3ab0c10250a3b4c6611413ed43930e368082a2f7aeefef6aa0"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2FA6716D-8B51-4D38-BAB7-ADA2DFE23C76/libplist.xcframework.zip", checksum: "367a83593fa58fdb8443027f04d7d7f0a434da02273f8e5c1ac0cd2b43161960"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2FA6716D-8B51-4D38-BAB7-ADA2DFE23C76/libtatsu.xcframework.zip", checksum: "3604fdd5d4e98a6effa9ef5bac784aa15815698b944823dabed695951f777ad8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2FA6716D-8B51-4D38-BAB7-ADA2DFE23C76/libusbmuxd.xcframework.zip", checksum: "f6a8a517abbba7703b7eacb27ddb511a22b45f25a257ad83e1c0f0253dc8c9f9"),
    ]
)

