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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A2A16F90-1062-4F57-AFDE-10FCABB2586F/libimobiledevice.xcframework.zip", checksum: "83c17577ec5c561f973a8b29da5e9ec6c4013476b03ef5b7fdfb3f15ea2287b1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A2A16F90-1062-4F57-AFDE-10FCABB2586F/libimobiledevice_glue.xcframework.zip", checksum: "2fd7154a24b62895259628d0dda720d766ce3d9ff69d00b606731d411c9124b0"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A2A16F90-1062-4F57-AFDE-10FCABB2586F/libplist.xcframework.zip", checksum: "3549cf35acd09429c0f389bd96273004c94af81f84291f9a2c10ca9372e256d3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A2A16F90-1062-4F57-AFDE-10FCABB2586F/libtatsu.xcframework.zip", checksum: "03c7f2bc6e996f55e81f3abffb9e38ad2a3954788e9c67a69862caffd03fce60"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A2A16F90-1062-4F57-AFDE-10FCABB2586F/libusbmuxd.xcframework.zip", checksum: "151a529ae8b7bc77063ad38bca5cd7f56e822e2bf0ba55f8901235004e129ba7"),
    ]
)

