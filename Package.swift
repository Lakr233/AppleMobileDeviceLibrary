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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0ABED9E-F914-4E05-9157-D1A047D7AE97/libimobiledevice.xcframework.zip", checksum: "3aae6a2771b80150f7e1c24e0a6d59d76f97905e29a481755ceeda2dd9fcc588"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0ABED9E-F914-4E05-9157-D1A047D7AE97/libimobiledevice_glue.xcframework.zip", checksum: "39cb978959e4a276a8d9858a526aa6adc455697f676e25568410f28af1dd44bd"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0ABED9E-F914-4E05-9157-D1A047D7AE97/libplist.xcframework.zip", checksum: "8437e370adec11f7bf1ef439b659d4520ea17d237b3de0bd253b3d2e16605282"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0ABED9E-F914-4E05-9157-D1A047D7AE97/libtatsu.xcframework.zip", checksum: "c19fa4c37f24a80c60cca0fc84db0ded19fecfd49507782808959aed76a7bee3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0ABED9E-F914-4E05-9157-D1A047D7AE97/libusbmuxd.xcframework.zip", checksum: "9292b70a9d800666a1409ff474f445f6e36996da13d8cf8ac3fb1f432fd77935"),
    ]
)

