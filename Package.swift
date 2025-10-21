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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7800F16B-B335-411C-AA58-4189672AEBE2/libimobiledevice.xcframework.zip", checksum: "69df255c6e0879378d17b86b8e31294d7b416322237e05ea3c04e8542670f524"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7800F16B-B335-411C-AA58-4189672AEBE2/libimobiledevice_glue.xcframework.zip", checksum: "ab13e0dd11a3e28c9ea90acce0bcf58f11be085a53784b1990bf49b0da6c26f9"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7800F16B-B335-411C-AA58-4189672AEBE2/libplist.xcframework.zip", checksum: "c905d706a16a6d0136ebf8a7d5ca3baeceda5e5927f5a026f5e3ae641a426b5d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7800F16B-B335-411C-AA58-4189672AEBE2/libtatsu.xcframework.zip", checksum: "2dea190eac85503c032a5c2309fedc21d57aed9343a43389279390f0e532f17d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7800F16B-B335-411C-AA58-4189672AEBE2/libusbmuxd.xcframework.zip", checksum: "1cc2b00c2b5c3990884d2db74cbbf20ede87e40c35d13e29db74914d52d2c6af"),
    ]
)

