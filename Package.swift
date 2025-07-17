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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.91C22EFA-6746-4232-8755-DA8A76088C11/libimobiledevice.xcframework.zip", checksum: "f77bf9a7e1390b643276ad5f091eff85ab94d8448c4b263b90e70b85f154b454"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.91C22EFA-6746-4232-8755-DA8A76088C11/libimobiledevice_glue.xcframework.zip", checksum: "ed4b9a8f793a1978da1353fb5fab121ea1858e1a98ef09a9ece1abf467d1bc83"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.91C22EFA-6746-4232-8755-DA8A76088C11/libplist.xcframework.zip", checksum: "62aa19546bd96738a91f7c48bacda00d6fdf6fb1af78aef260c2694b1443f8d7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.91C22EFA-6746-4232-8755-DA8A76088C11/libtatsu.xcframework.zip", checksum: "983b9a97b1bd99680c72a5802504b11eb0e15f993e4552062cb3dc85c1adb82c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.91C22EFA-6746-4232-8755-DA8A76088C11/libusbmuxd.xcframework.zip", checksum: "aa6477081d3c01d11d962b8e3c6ebf0919522d3bda1d8c2dd38b12722e92bc9f"),
    ]
)

