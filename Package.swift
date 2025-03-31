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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0EEA9CE0-8370-476C-AEB7-DC889087D3E7/libimobiledevice.xcframework.zip", checksum: "d6493368b31c08118ed1ff13b3c85135f4d5b4a6c2c60d7106e9fa88dadaa0f0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0EEA9CE0-8370-476C-AEB7-DC889087D3E7/libimobiledevice_glue.xcframework.zip", checksum: "bc89693ad0b202cec2b79f17d6f6de3ec254d52b2da49b9244c7fe32ff14c865"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0EEA9CE0-8370-476C-AEB7-DC889087D3E7/libplist.xcframework.zip", checksum: "32b852947ffcbf2f24b3bc1d5d19929c213bf277549618ed9de751c72313abe5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0EEA9CE0-8370-476C-AEB7-DC889087D3E7/libtatsu.xcframework.zip", checksum: "2826d9b983c0018e6f55d9af8d7f4a1ee5fbd04d25eb7dc96444fa4f4fe8965a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0EEA9CE0-8370-476C-AEB7-DC889087D3E7/libusbmuxd.xcframework.zip", checksum: "c4da7cfacf6d7b59fd346ede588af04fc86bb4fd95b3b343ab599e6af4e165c4"),
    ]
)

