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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BB52859-0F0B-4BAA-B0A2-FA968D0B86D2/libimobiledevice.xcframework.zip", checksum: "766445e0465a49e302e6f4529ccd270325b4506a42c2f6e57baaa343b9f7a3ee"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BB52859-0F0B-4BAA-B0A2-FA968D0B86D2/libimobiledevice_glue.xcframework.zip", checksum: "1343720f3d7fe28f1767c9d1ea3a4766412651c3caa907150fef6d58522e5802"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BB52859-0F0B-4BAA-B0A2-FA968D0B86D2/libplist.xcframework.zip", checksum: "884540a66493cd3b2cfe10d90c9840ee6ffd450b541d05ae27e8249fddf267be"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BB52859-0F0B-4BAA-B0A2-FA968D0B86D2/libtatsu.xcframework.zip", checksum: "a3888861c87329bb1707b630b743f0b346d3b32f3ba18ded84a9f630a98d9248"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BB52859-0F0B-4BAA-B0A2-FA968D0B86D2/libusbmuxd.xcframework.zip", checksum: "054e2ffd92da02e428cc518fc5c265b3065b8d284bc80da6182311ae5b3ffad3"),
    ]
)

