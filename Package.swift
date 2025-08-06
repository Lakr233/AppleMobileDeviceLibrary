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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4D8509DB-2AD6-44CD-B70D-B92D583DB214/libimobiledevice.xcframework.zip", checksum: "2a8f0814831bc2102f891464036cc66605252118711eae9559d6b42fa1c10459"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4D8509DB-2AD6-44CD-B70D-B92D583DB214/libimobiledevice_glue.xcframework.zip", checksum: "17fadc0ac9db093ee5a5906a7eea17ae31781af5b4967378441c64e921ad3966"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4D8509DB-2AD6-44CD-B70D-B92D583DB214/libplist.xcframework.zip", checksum: "c3a268aaf620754f3106d5862a187775ba404eda6fc83dc89360e53aec90a768"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4D8509DB-2AD6-44CD-B70D-B92D583DB214/libtatsu.xcframework.zip", checksum: "11d540c986eed5aaeb3a44db7a452fe01ebbe63dbaaa73b82edb9507d7bb73d9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4D8509DB-2AD6-44CD-B70D-B92D583DB214/libusbmuxd.xcframework.zip", checksum: "80c81aff79525a0435fdc1df38a33f084fd95b7c5176ba2d578decfa69a29907"),
    ]
)

