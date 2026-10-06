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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0FBA982D-E7C6-4AAB-BEEB-083C05FE2E1F/libimobiledevice.xcframework.zip", checksum: "f88ed83bbc4b1e8f04e825d07d1b2e28ca0307d9fb3e73294865bc1d7a21825d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0FBA982D-E7C6-4AAB-BEEB-083C05FE2E1F/libimobiledevice_glue.xcframework.zip", checksum: "2ec0bf5514b8f909cf93a4102fe425b8c4a22c7de5c683c4b3ccc265b7b1e8f9"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0FBA982D-E7C6-4AAB-BEEB-083C05FE2E1F/libplist.xcframework.zip", checksum: "206c3c5b6bea52c01a03f7d2c6b72ec643db95e2d6af3ad7c711e93d782c5be4"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0FBA982D-E7C6-4AAB-BEEB-083C05FE2E1F/libtatsu.xcframework.zip", checksum: "29801958fa43fa5924c5c8afaf6c1eeb6d9aa030466e06a29cec308aa6ef95b4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0FBA982D-E7C6-4AAB-BEEB-083C05FE2E1F/libusbmuxd.xcframework.zip", checksum: "68ff406b1bd2454bf2ae575bb384d3331e34e08a7f279d904551cace780bc152"),
    ]
)

