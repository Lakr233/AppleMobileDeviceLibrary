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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8054736E-3DC1-45FE-B0D1-715B67F08697/libimobiledevice.xcframework.zip", checksum: "c5a9e3cfcc04b4c6da5ccd797f6544a3d149d172041048aaf5f5a8a96172ad1b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8054736E-3DC1-45FE-B0D1-715B67F08697/libimobiledevice_glue.xcframework.zip", checksum: "95dd5bff1c275da9335606f96865f4c497df3165af8a0705521131240604a9ea"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8054736E-3DC1-45FE-B0D1-715B67F08697/libplist.xcframework.zip", checksum: "4d71a1344d5342a6903d6cf9c0f4d0b60b70dbfd9c3456353d79da5759d6fe6c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8054736E-3DC1-45FE-B0D1-715B67F08697/libtatsu.xcframework.zip", checksum: "eb1676bfc8f41a08fd5e389892d64ac2f391201ecd9f64cb3bea35d4edf5b667"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8054736E-3DC1-45FE-B0D1-715B67F08697/libusbmuxd.xcframework.zip", checksum: "6ba278a5de477a9fad1671ee131bd35f3031b9ca7a1da3e2f484ece9d94e3be2"),
    ]
)

