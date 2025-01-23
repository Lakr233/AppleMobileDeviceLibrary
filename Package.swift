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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.41A948AE-9EBA-4161-BC69-540E65226918/libimobiledevice.xcframework.zip", checksum: "cf89bc28f2051af8dfeb88b69d627ef7012b3a5f0ca67f0114a8ef0c3a953755"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.41A948AE-9EBA-4161-BC69-540E65226918/libimobiledevice_glue.xcframework.zip", checksum: "6964550b5529a7944f4854051b54ac97b1df7bfb3be01bfb4d7b4ba6713c0d36"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.41A948AE-9EBA-4161-BC69-540E65226918/libplist.xcframework.zip", checksum: "a5b58a716caabf1b17f0e40fcd2a83c4af28d8220745b77ec18e5bd0ca460f3f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.41A948AE-9EBA-4161-BC69-540E65226918/libtatsu.xcframework.zip", checksum: "f5bc432a61dbe49cd1efa51dd20ae912f7aec51d1ade6d99e18c7cf899bc245c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.41A948AE-9EBA-4161-BC69-540E65226918/libusbmuxd.xcframework.zip", checksum: "05475dc8b69865d855b1fed3ac71767f4889f62294eea897409a8053e009ab3d"),
    ]
)

