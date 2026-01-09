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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2134AC0C-963F-4972-AEC8-68B5CA2473E1/libimobiledevice.xcframework.zip", checksum: "306c219bae090a04c4aaff4c06dfd09a8707d12675bfd3788335601361426175"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2134AC0C-963F-4972-AEC8-68B5CA2473E1/libimobiledevice_glue.xcframework.zip", checksum: "ed3eb6aa0692706a19b59dc50f85111ebf2d583d92dcb211074c683ec6d42b3a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2134AC0C-963F-4972-AEC8-68B5CA2473E1/libplist.xcframework.zip", checksum: "e34cdf06b49f2cefd071e3e8c7e4b517541dc2ca6c54ee367d2ad19453b10332"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2134AC0C-963F-4972-AEC8-68B5CA2473E1/libtatsu.xcframework.zip", checksum: "07830325850430a9c8e1afc0cbecfa983db02a9d23cdfcbb01c468dcd0fede51"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2134AC0C-963F-4972-AEC8-68B5CA2473E1/libusbmuxd.xcframework.zip", checksum: "19605cf73d21895119c789891428c62f41e8ad80e642d87ca3c5699e73abeb7a"),
    ]
)

