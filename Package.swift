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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.572FC0B5-9E24-4E0A-9ED7-A65BA6FD35DD/libimobiledevice.xcframework.zip", checksum: "8a07a27ba0dd9e5d61383852eb16746877307bd77473a4abf9bd7cb9dcd1c914"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.572FC0B5-9E24-4E0A-9ED7-A65BA6FD35DD/libimobiledevice_glue.xcframework.zip", checksum: "6f623c0de931b9212cb76a3f41d8a0303f4f9bb0d513ac15be99c218974f2e24"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.572FC0B5-9E24-4E0A-9ED7-A65BA6FD35DD/libplist.xcframework.zip", checksum: "c289c822e186bafd0aece265c71b919b5d07a16eaa7e1cf8e2529267de769fa5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.572FC0B5-9E24-4E0A-9ED7-A65BA6FD35DD/libtatsu.xcframework.zip", checksum: "a5ed15a5633701d57e349f4faf73f8a99b51231fb4d0c929d0db2ff1d9349754"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.572FC0B5-9E24-4E0A-9ED7-A65BA6FD35DD/libusbmuxd.xcframework.zip", checksum: "c858a8be5eed900651d9970e3d6ccdb64ecef1c0ca784152c3bdda2d6382d7a0"),
    ]
)

