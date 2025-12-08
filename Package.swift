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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F2DD2D5-E8AF-460D-8F3D-E3EFFCD055FA/libimobiledevice.xcframework.zip", checksum: "d015426998f0f04f324f234024af1dd56db35cede1084b9b0601de6a4bd9e2b2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F2DD2D5-E8AF-460D-8F3D-E3EFFCD055FA/libimobiledevice_glue.xcframework.zip", checksum: "ac7475d54222a048e50b0af3c3f4afb52bb5049ff6f096331195f8e7c7c9177f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F2DD2D5-E8AF-460D-8F3D-E3EFFCD055FA/libplist.xcframework.zip", checksum: "97da02f3dceea08e6d8a32b69fce9859a0a3b1fb5acf5a5f97efb5d82d7e48ac"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F2DD2D5-E8AF-460D-8F3D-E3EFFCD055FA/libtatsu.xcframework.zip", checksum: "1275c13c87b81e93d8ffefb1c2c7950bbaf3cca8a4a1dc6eec506b1d75049d05"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F2DD2D5-E8AF-460D-8F3D-E3EFFCD055FA/libusbmuxd.xcframework.zip", checksum: "03f253bcb94c19472f18c1d25bc0a2fad434272a0a0bd85c6bde7c1b71eefb20"),
    ]
)

