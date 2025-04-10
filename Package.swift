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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5D687D74-5172-4697-8C64-074046D891BC/libimobiledevice.xcframework.zip", checksum: "b213d30e1157925deeecafb2135c373961ed955fdee53eb6f54e8fd134444184"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5D687D74-5172-4697-8C64-074046D891BC/libimobiledevice_glue.xcframework.zip", checksum: "0ccb9bdbcffabd19d526906baccf8c77e039f53fffb7e20c6048152f3d3ff58f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5D687D74-5172-4697-8C64-074046D891BC/libplist.xcframework.zip", checksum: "66e1c48baf9aab192e76086ec381d33899c0d1afb4439044022f72d21be2151b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5D687D74-5172-4697-8C64-074046D891BC/libtatsu.xcframework.zip", checksum: "8c9f7a2453b82324edb7ba336f3859c19dcab97029d64bbb8b39c76199caa392"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5D687D74-5172-4697-8C64-074046D891BC/libusbmuxd.xcframework.zip", checksum: "64fbccffd732dc4be2cf1dcbce59dfd765a9258f112f925aa9750b82bf2620dc"),
    ]
)

