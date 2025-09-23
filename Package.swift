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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F39DDD9D-F70F-423D-99C1-38A3DD2FCA1E/libimobiledevice.xcframework.zip", checksum: "9ba3d4a7ffe51a91a6f8926c0d26693da7ac3caf0ddd7aab286d93993b57dce3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F39DDD9D-F70F-423D-99C1-38A3DD2FCA1E/libimobiledevice_glue.xcframework.zip", checksum: "6b6408a2b363ee0dabfc5788fa458603a0a10224a63529f5ce88b00cc9e96e57"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F39DDD9D-F70F-423D-99C1-38A3DD2FCA1E/libplist.xcframework.zip", checksum: "2d416f5437c6be3607b003519e75bf7a12887eb8fddbf95367cbfa2626da312e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F39DDD9D-F70F-423D-99C1-38A3DD2FCA1E/libtatsu.xcframework.zip", checksum: "f6ec5be9cdecee309cde1fefbf52be0f72fe1f7f5a5550fc7db582cf362aaa89"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F39DDD9D-F70F-423D-99C1-38A3DD2FCA1E/libusbmuxd.xcframework.zip", checksum: "0218708e35cccf994f053114d3cbd65ccd0206293c7a276075bc8ec95c163e04"),
    ]
)

