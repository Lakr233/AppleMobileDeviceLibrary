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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5C462998-D9B0-44C7-993A-BB4C0A75C09D/libimobiledevice.xcframework.zip", checksum: "b0e2c7b22846d824b03015e6a0854f1acaa13e9fbe1d50e41b4d30297ca2c033"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5C462998-D9B0-44C7-993A-BB4C0A75C09D/libimobiledevice_glue.xcframework.zip", checksum: "efc90d2921527a9fe067f50cba0cbfb15d499bbee4b9f8b71bde3adf59bdec94"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5C462998-D9B0-44C7-993A-BB4C0A75C09D/libplist.xcframework.zip", checksum: "065215880091b6a689b5914de768a87a34004af2791b4aacb038b608b0dca823"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5C462998-D9B0-44C7-993A-BB4C0A75C09D/libtatsu.xcframework.zip", checksum: "e167bb7912445fc8d077df47ce0c455a773b19bab1346a0d7a95512312303c47"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5C462998-D9B0-44C7-993A-BB4C0A75C09D/libusbmuxd.xcframework.zip", checksum: "744dba6c88ce844a225940cb658451054e18fe8c5d5b443adf46893afbdad481"),
    ]
)

