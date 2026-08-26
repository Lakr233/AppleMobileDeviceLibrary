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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.87B8C59A-23BD-44CC-A6F0-B23688C8516C/libimobiledevice.xcframework.zip", checksum: "a05745c10bb92ddd4527352b04c2db70bd34ca84461de2b7c7f43af1f1d4c20e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.87B8C59A-23BD-44CC-A6F0-B23688C8516C/libimobiledevice_glue.xcframework.zip", checksum: "b19118f408720307a7acac69d3fe924c95ddd030512362bfa5777863a41fcd51"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.87B8C59A-23BD-44CC-A6F0-B23688C8516C/libplist.xcframework.zip", checksum: "6ddbb3b79eb62161be3a79c6778ab3485dfef8bfa0d059200778941274972075"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.87B8C59A-23BD-44CC-A6F0-B23688C8516C/libtatsu.xcframework.zip", checksum: "3ff01a1013d6bf689395329be5e7c0730681c8564411547b592e05e983d0082b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.87B8C59A-23BD-44CC-A6F0-B23688C8516C/libusbmuxd.xcframework.zip", checksum: "1be1b09d3afab32cf3c21adbd4d92904e943f988637e9450f2e4f41a07c17327"),
    ]
)

