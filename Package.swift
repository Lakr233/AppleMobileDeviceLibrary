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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1E37233B-F9C8-47E2-B846-B5A33C74D07A/libimobiledevice.xcframework.zip", checksum: "fffe92d488c20d1b0e91bf8a23b3bc00c4f51321d09df96a272c48ab7d61edb1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1E37233B-F9C8-47E2-B846-B5A33C74D07A/libimobiledevice_glue.xcframework.zip", checksum: "b4b33a318055c3d0e680a0ccae456a98c18227bc52ec5a752958f52630e1cb57"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1E37233B-F9C8-47E2-B846-B5A33C74D07A/libplist.xcframework.zip", checksum: "9e3a7e91c144787bb92891926b2e6a16d7ae0748588fc5345b53c857f62090a8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1E37233B-F9C8-47E2-B846-B5A33C74D07A/libtatsu.xcframework.zip", checksum: "e412b48734069ae26f3dad46683f9fc663dbd0aa8ccda0cb5291c0b9b32c6039"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1E37233B-F9C8-47E2-B846-B5A33C74D07A/libusbmuxd.xcframework.zip", checksum: "b0899d81556272534c6bb5f02eaa3c4790d9853141687f1c53e1d45328be0b27"),
    ]
)

