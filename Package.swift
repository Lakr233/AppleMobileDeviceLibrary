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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C64ECE57-8714-4424-ACE6-11A68F784053/libimobiledevice.xcframework.zip", checksum: "b5e9a11060b6075847cac1b93a5250a1a7438a2698b93d931452274a14c3f636"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C64ECE57-8714-4424-ACE6-11A68F784053/libimobiledevice_glue.xcframework.zip", checksum: "40eb83a49565db0612ea3474cf9602abec0a327c932e2c8f3085334b3963b934"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C64ECE57-8714-4424-ACE6-11A68F784053/libplist.xcframework.zip", checksum: "46a2bfa396b662eba1b1e4faec23a4b215796d25e22eb38ed569c3027656cd29"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C64ECE57-8714-4424-ACE6-11A68F784053/libtatsu.xcframework.zip", checksum: "b0557b6bd1fbb61d7fb69dfeca527e12224b9017c170191606e1a43ba7901e30"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C64ECE57-8714-4424-ACE6-11A68F784053/libusbmuxd.xcframework.zip", checksum: "0e213af19af9331589379a79c52e142ff296937770cfd462050f553e7318f5f4"),
    ]
)

