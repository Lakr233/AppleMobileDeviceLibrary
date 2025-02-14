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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.770A71BB-E8BA-447A-889F-9A1291409487/libimobiledevice.xcframework.zip", checksum: "6a836269202de9c2245876ccb8a3b6a658d6b18dc487cff96201353664f94dd1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.770A71BB-E8BA-447A-889F-9A1291409487/libimobiledevice_glue.xcframework.zip", checksum: "c5fa21e3a5de2c62ed5872f23b0fd4b58c7ab329ba03dd29d556f0d71fda650d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.770A71BB-E8BA-447A-889F-9A1291409487/libplist.xcframework.zip", checksum: "319dc715de4893a0243b0a5551939beb73c1d1f2f6a294d8744c334eb2052dd7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.770A71BB-E8BA-447A-889F-9A1291409487/libtatsu.xcframework.zip", checksum: "a8612a0007a4362539c12e1d341f7b57a058cf737c05edf724cd876a349b1b2b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.770A71BB-E8BA-447A-889F-9A1291409487/libusbmuxd.xcframework.zip", checksum: "a3d04e04c61b39cc048e001d4d99075fee3dc1eab148fbc40f3d8ebeb178c4c5"),
    ]
)

