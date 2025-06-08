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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4A6E7B7-E348-4AA3-9DA3-16283AA15EB3/libimobiledevice.xcframework.zip", checksum: "853e82734f338964af5590932e195a0d29d4105e55fb968a12b53844676d59a9"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4A6E7B7-E348-4AA3-9DA3-16283AA15EB3/libimobiledevice_glue.xcframework.zip", checksum: "150df82c5d4a3d87fab0279918d1a091a7cdc55a408ff66e3ae181057d484f17"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4A6E7B7-E348-4AA3-9DA3-16283AA15EB3/libplist.xcframework.zip", checksum: "5e52c62e0f3c8d11dffad579c37ea3ca4b3e36eb1fd3f4dd237cdb73c7742906"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4A6E7B7-E348-4AA3-9DA3-16283AA15EB3/libtatsu.xcframework.zip", checksum: "99121b408d6b045ad43a568aa41f9ff00cfc991be8a7d5901ff72ed2b000e628"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4A6E7B7-E348-4AA3-9DA3-16283AA15EB3/libusbmuxd.xcframework.zip", checksum: "27a2bdee20ce6268a1cf0970b1f4be33ae66c02de895b514e505d4bac32f30bd"),
    ]
)

