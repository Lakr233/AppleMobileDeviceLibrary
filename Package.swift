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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8B765D17-0718-4678-A73F-918868D10497/libimobiledevice.xcframework.zip", checksum: "f319ce14019a0fa1dfc2478159b2f880677a7bc3edcfac6b260ab3a86db3ce0d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8B765D17-0718-4678-A73F-918868D10497/libimobiledevice_glue.xcframework.zip", checksum: "b21a3ed9bd0a674eab8806d52a3573cd1d154f0ed6673a5d2ef7697a2c778bd6"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8B765D17-0718-4678-A73F-918868D10497/libplist.xcframework.zip", checksum: "6d477f89a5ae3ee2f4ef8a422436679992a9dd33a4c5b9b07db77a198a8602a1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8B765D17-0718-4678-A73F-918868D10497/libtatsu.xcframework.zip", checksum: "a9ee885e1601a4668d925552f8360c8fe092d7a6d7dec43af9585ef4d39813c0"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8B765D17-0718-4678-A73F-918868D10497/libusbmuxd.xcframework.zip", checksum: "698461c454765c670230e1f63401ebc9c0e171ae380b60641210b3d44ed74a6a"),
    ]
)

