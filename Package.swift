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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.536BBB36-0520-4FE5-B17F-CEBBDE19FE3F/libimobiledevice.xcframework.zip", checksum: "7d6c15c2af9b5f7db4912f10a077710598d72ee5e408b68259eb38110daa63ad"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.536BBB36-0520-4FE5-B17F-CEBBDE19FE3F/libimobiledevice_glue.xcframework.zip", checksum: "f651f77d9395d1fc1855d6b1bbe361c79e3abe1d6e789e3b819d97db183462fa"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.536BBB36-0520-4FE5-B17F-CEBBDE19FE3F/libplist.xcframework.zip", checksum: "1ab6a201422a2a0e2b7df1e88ee51712e3b646faf19007f02908837c4dd0b65f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.536BBB36-0520-4FE5-B17F-CEBBDE19FE3F/libtatsu.xcframework.zip", checksum: "042c06306467f1c8b1dcc74968e6fb7c16b1ef1e98d8f4ecd00e9b5284cf3831"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.536BBB36-0520-4FE5-B17F-CEBBDE19FE3F/libusbmuxd.xcframework.zip", checksum: "b508940d8e2a45f384de225ab0f99e6e0b2173a4fb27ccd878852e14dcac4501"),
    ]
)

