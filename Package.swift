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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2A6F63C2-254C-484C-B6CF-BA895BE9B3C4/libimobiledevice.xcframework.zip", checksum: "cc288a7dfc7e8762a3866c3785751111984399228eba9c4cbf1f1d4652536dab"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2A6F63C2-254C-484C-B6CF-BA895BE9B3C4/libimobiledevice_glue.xcframework.zip", checksum: "805999ad326940365fd3dd5c419a8f6bac4ea066c98cb32de4e9cc4528644229"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2A6F63C2-254C-484C-B6CF-BA895BE9B3C4/libplist.xcframework.zip", checksum: "df361dbac6c6de7f3dea7e3022048ad3672a1acfe240747dff687ebc7947aa73"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2A6F63C2-254C-484C-B6CF-BA895BE9B3C4/libtatsu.xcframework.zip", checksum: "0cbb3bd194057bcbacf9a8f9fce7226e8fb5fc4d7a7af0d6ab09f95f3cdc5556"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2A6F63C2-254C-484C-B6CF-BA895BE9B3C4/libusbmuxd.xcframework.zip", checksum: "330b45a415b2ab18dc7c76a0e9ac56cc84891b270e53ed8d8ece29509c8eb30f"),
    ]
)

