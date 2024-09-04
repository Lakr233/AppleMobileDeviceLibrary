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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.95302F40-BF7A-48D4-9BFE-9BA7053B12E3/libimobiledevice.xcframework.zip", checksum: "8af17aab29c0b4d143c06cc1d70545b6a29c3be9499f7c6ed579a40c990b6dfa"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.95302F40-BF7A-48D4-9BFE-9BA7053B12E3/libimobiledevice_glue.xcframework.zip", checksum: "c645853127b6af8f872b2fc972f8f41bb1e8b0f2b74a6abaab5714742b881444"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.95302F40-BF7A-48D4-9BFE-9BA7053B12E3/libplist.xcframework.zip", checksum: "40d357be929ec4fece7167b6ce434dbc4536037b894abde701a874e9e698b267"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.95302F40-BF7A-48D4-9BFE-9BA7053B12E3/libtatsu.xcframework.zip", checksum: "5de6e9391bb28df99920990cc617c588af58c7e61335431c5b9703f088fa7da6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.95302F40-BF7A-48D4-9BFE-9BA7053B12E3/libusbmuxd.xcframework.zip", checksum: "251d8e5e8589592d3e7925c7d9ec3ca4f7761e6875f7608cc98359fbc5e44008"),
    ]
)

