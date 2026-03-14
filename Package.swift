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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDA7CB03-7EA4-49C3-93C6-2D207D4526E4/libimobiledevice.xcframework.zip", checksum: "ede967a8bd8e4d2ca7df8b8100755cf8da328c643a58112e35b95443eb067032"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDA7CB03-7EA4-49C3-93C6-2D207D4526E4/libimobiledevice_glue.xcframework.zip", checksum: "4f43d518a2467b8f2264288994708067da9aaf17244f82d4c5480d8c6e74bc51"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDA7CB03-7EA4-49C3-93C6-2D207D4526E4/libplist.xcframework.zip", checksum: "579536c13e3849ba3df31917754c92ec8daaeb83751de9f848b36f70fe4a864d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDA7CB03-7EA4-49C3-93C6-2D207D4526E4/libtatsu.xcframework.zip", checksum: "0cb98dda5f5418241308ba98a5ad8d5fcca9818a8576ce5060aa94e4312bcb62"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDA7CB03-7EA4-49C3-93C6-2D207D4526E4/libusbmuxd.xcframework.zip", checksum: "4c773d10bcfc3408fb5fb6f5df735ee9dcd3215110c0ceb3d4ae13af08dc166b"),
    ]
)

