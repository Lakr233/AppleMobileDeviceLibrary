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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.770D3986-17BD-4890-948A-8640B0593B48/libimobiledevice.xcframework.zip", checksum: "09916b3c3e1ceae9eac4a8c8251e88f30d2a891d1f13ec43a7105ee94dfa1632"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.770D3986-17BD-4890-948A-8640B0593B48/libimobiledevice_glue.xcframework.zip", checksum: "d67082bdb64946eb6988276cec6f9a19931e61144e708191c34771ca22d86778"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.770D3986-17BD-4890-948A-8640B0593B48/libplist.xcframework.zip", checksum: "0761d2b0f1aaf2a55f15e06584e3f6409d48a6fd6dc72a1008fcaa0dffec2676"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.770D3986-17BD-4890-948A-8640B0593B48/libtatsu.xcframework.zip", checksum: "2ff3e0a9fba3980a62c188bbe4761b86519f8cf7f74f08716ea1e295ef8c5d59"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.770D3986-17BD-4890-948A-8640B0593B48/libusbmuxd.xcframework.zip", checksum: "6042c1fe49f5bedeff2df2abf822dc4125294c8e89ea3df7368616ad2d1a2fcb"),
    ]
)

