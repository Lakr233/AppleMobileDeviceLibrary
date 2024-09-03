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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.58963E8F-935B-457B-8B50-B1D59C838594/libimobiledevice.xcframework.zip", checksum: "7f4e49a7c459baadfe0df12a9a215cf5f1079afb600d3ce1c4b2315fecae8fd6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.58963E8F-935B-457B-8B50-B1D59C838594/libimobiledevice_glue.xcframework.zip", checksum: "d3673188ef2509bc431765c6d26ad13b568f32acc878c5d3f178fbc2ebcd85eb"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.58963E8F-935B-457B-8B50-B1D59C838594/libplist.xcframework.zip", checksum: "07f17a431352c2bfe5366f087fe541704044226a36f5be0cf5bd8e17fe615219"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.58963E8F-935B-457B-8B50-B1D59C838594/libtatsu.xcframework.zip", checksum: "156332f51151267684e8dc8a82678a6158c2cfa36f58dae61fdf3b91a12a417c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.58963E8F-935B-457B-8B50-B1D59C838594/libusbmuxd.xcframework.zip", checksum: "a5c0961a82ffebb4f647d10d1f4d08bc10ced5b6e1c1b8fa67909af7882fa8b1"),
    ]
)

