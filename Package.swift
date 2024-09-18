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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8ADCBCB9-4F5A-47DA-9DA5-FC326DF71196/libimobiledevice.xcframework.zip", checksum: "ea16ed40d13ff69d47a096d943bcb5d70c6dbf58acc752cfe5de2c7c96832c1f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8ADCBCB9-4F5A-47DA-9DA5-FC326DF71196/libimobiledevice_glue.xcframework.zip", checksum: "787433af4dde53d192a47389298a7a2742aab9092f8aad0da2896518c7e6fb47"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8ADCBCB9-4F5A-47DA-9DA5-FC326DF71196/libplist.xcframework.zip", checksum: "473b8dfa0d8f6aabd5bbd9b98d700068fdf935af72b5f946d3a1eac4e31c9786"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8ADCBCB9-4F5A-47DA-9DA5-FC326DF71196/libtatsu.xcframework.zip", checksum: "5c60f78cde0907806431c4c97528bd1f88fe773fdbd38222f61bfff29fc934da"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8ADCBCB9-4F5A-47DA-9DA5-FC326DF71196/libusbmuxd.xcframework.zip", checksum: "23e701bfb0ec999b1c0e7c5b84bc216e44ca0a6c76ef09c98b241e7fdb3ae85e"),
    ]
)

