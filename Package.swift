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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.85D3E76A-17E9-46B0-980F-79C7A90765A0/libimobiledevice.xcframework.zip", checksum: "fdd23da476f0ae78e086cc778aac782d230f2ba1176522e88375091642f27748"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.85D3E76A-17E9-46B0-980F-79C7A90765A0/libimobiledevice_glue.xcframework.zip", checksum: "a7f151d18c297734d70b3f52f960c4df9f6c17dd36f59e754148f076052b67de"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.85D3E76A-17E9-46B0-980F-79C7A90765A0/libplist.xcframework.zip", checksum: "5e7cef445994034ae6a061184a7769a656872c3477e332053f80da63bc7e6fb7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.85D3E76A-17E9-46B0-980F-79C7A90765A0/libtatsu.xcframework.zip", checksum: "a2f65fe7488f06c0ac9356472bc58fb59ade0db7c23d9ddf208e0c90aef9bb8a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.85D3E76A-17E9-46B0-980F-79C7A90765A0/libusbmuxd.xcframework.zip", checksum: "a15adbd14841769f7d6bfbc25e92dc2f9f96e91cc9037a47baa9b7678019b4b9"),
    ]
)

