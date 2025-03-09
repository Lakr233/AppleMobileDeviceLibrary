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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5A97506-6B36-4C24-B2D1-2B2E81638D91/libimobiledevice.xcframework.zip", checksum: "73c4970e7902c1ed7d696b6fce6fc24622843f021b9d2857e1a7ab1a4a9ae0ea"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5A97506-6B36-4C24-B2D1-2B2E81638D91/libimobiledevice_glue.xcframework.zip", checksum: "da2f42181e57c8abd40f7bfe8b3c8e2b8022ec41a316f02beeb253c8fee88bf5"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5A97506-6B36-4C24-B2D1-2B2E81638D91/libplist.xcframework.zip", checksum: "be42a03dc08ec1c19d94e96be12a66b62bafadd362e36164bbef85ee2f4688de"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5A97506-6B36-4C24-B2D1-2B2E81638D91/libtatsu.xcframework.zip", checksum: "bf9e94045202d186efd2eb329f0225d10885c555e833df48582c2d1ea8f122be"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5A97506-6B36-4C24-B2D1-2B2E81638D91/libusbmuxd.xcframework.zip", checksum: "f114a8b316e7fab95bfc478da2fb41eef511bc57e2a5e06b46acfc4f0bfcc5ef"),
    ]
)

