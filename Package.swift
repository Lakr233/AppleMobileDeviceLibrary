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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3B497CB8-29FC-4A96-AD72-7DF842A4EAC7/libimobiledevice.xcframework.zip", checksum: "3dfa53895a07743b51d1c0863c7a87fbaebb4b247d70e9d4fddb4eb742fa672e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3B497CB8-29FC-4A96-AD72-7DF842A4EAC7/libimobiledevice_glue.xcframework.zip", checksum: "ae6134d0255ec4fc71983edd5de22b555b7fe423337240d6a6bb5fe26d4e6cd7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3B497CB8-29FC-4A96-AD72-7DF842A4EAC7/libplist.xcframework.zip", checksum: "57a6fb0c14b1feb4175cca37f0f99b94dfa42d357b49ccb1aaf5d1fb59e1796a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3B497CB8-29FC-4A96-AD72-7DF842A4EAC7/libtatsu.xcframework.zip", checksum: "150e73cc3de64dfd1ec11df65786e12f3717e57624a3b9d51d7190907f1c9a59"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3B497CB8-29FC-4A96-AD72-7DF842A4EAC7/libusbmuxd.xcframework.zip", checksum: "2bb115d0ef3497f54b190c2d62ca3e1c89efbe42a87167afbe6492c676c25e80"),
    ]
)

