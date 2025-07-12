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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52FB1288-8B0C-4A72-BC4F-09C604D9B20B/libimobiledevice.xcframework.zip", checksum: "245e2befc464a69e8a968542201a690d482ad1806d50bc90a6d410223765fbf6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52FB1288-8B0C-4A72-BC4F-09C604D9B20B/libimobiledevice_glue.xcframework.zip", checksum: "7ea6ec4e9e06d748370435330c6bc515da76d13c3f1a6bd928bb48281bec10f8"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52FB1288-8B0C-4A72-BC4F-09C604D9B20B/libplist.xcframework.zip", checksum: "78cc68b73d56b34dc0a8067d2235839044b055dd40368406041d682dcc9196c0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52FB1288-8B0C-4A72-BC4F-09C604D9B20B/libtatsu.xcframework.zip", checksum: "a86db41615ae9addbbec08c1ea7784b32ac05466d3b37dcaa842e42f40bc7ef5"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52FB1288-8B0C-4A72-BC4F-09C604D9B20B/libusbmuxd.xcframework.zip", checksum: "6c0b2971bebd8d459133946fc62c1bd6debe022bf512547fb8414ea63f863011"),
    ]
)

