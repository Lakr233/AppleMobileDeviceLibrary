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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C066A840-5EB4-4C90-8609-D2ADE1A17869/libimobiledevice.xcframework.zip", checksum: "edf01aa04120094ebcf4b7003234222495e0acb0980196990e1854d50be9bacd"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C066A840-5EB4-4C90-8609-D2ADE1A17869/libimobiledevice_glue.xcframework.zip", checksum: "36e82bb43bd53199cc74e73b95917a031ca9792729372e51c7b63e19c21af4db"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C066A840-5EB4-4C90-8609-D2ADE1A17869/libplist.xcframework.zip", checksum: "1fd63a7fc632d8a7de3f97ef65e7e3b52952fc9a22ab80f49e8c72fb03697be8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C066A840-5EB4-4C90-8609-D2ADE1A17869/libtatsu.xcframework.zip", checksum: "6fcae21e9816e29cf94570e5dc1a01a3b5b8598ecd07e5132aead5473c5fb424"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C066A840-5EB4-4C90-8609-D2ADE1A17869/libusbmuxd.xcframework.zip", checksum: "5dbc52005f3c52531560d93476bb8f24ba9222581a7a4171adbb4a474e601967"),
    ]
)

