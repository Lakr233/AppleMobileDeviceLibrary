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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D7D8BCBB-F701-4DBC-93D7-9809ACFCB54D/libimobiledevice.xcframework.zip", checksum: "9f3cd8d4130b84c31f3e22c104facfc38d8f0affcd507a350e328f301d132cd8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D7D8BCBB-F701-4DBC-93D7-9809ACFCB54D/libimobiledevice_glue.xcframework.zip", checksum: "cfada76cde1ce2dc64a9e81832c1e75ca3ecc0af81a0fcb3dc4d83d23f9aa4e1"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D7D8BCBB-F701-4DBC-93D7-9809ACFCB54D/libplist.xcframework.zip", checksum: "ab53fbc3e6051917e668b44070dda8ab810fcf825499f5118a0ad41c0d0489e2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D7D8BCBB-F701-4DBC-93D7-9809ACFCB54D/libtatsu.xcframework.zip", checksum: "a5b7648cfe8548bba20844913bf7a7a0c3ccdb7f739f0efd9ca4a36bc10ab837"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D7D8BCBB-F701-4DBC-93D7-9809ACFCB54D/libusbmuxd.xcframework.zip", checksum: "e908fdbb21058439f2c46789e45a69d05b67f2b85e6d41b59d44c18110cd963d"),
    ]
)

