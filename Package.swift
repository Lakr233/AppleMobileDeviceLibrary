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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.622E7599-C5E3-4DDC-9F7C-2A444CB241EB/libimobiledevice.xcframework.zip", checksum: "ce1a8df12a5202c4976c191b52b9c30b629f2db391645519af1df4603783cab2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.622E7599-C5E3-4DDC-9F7C-2A444CB241EB/libimobiledevice_glue.xcframework.zip", checksum: "73ef6508918acb0bc10a209197a8b955abab5babcdfaa7be6d6b95980510c43d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.622E7599-C5E3-4DDC-9F7C-2A444CB241EB/libplist.xcframework.zip", checksum: "e83fb7f745ae7cd30a8617d4045624ffb0eff79de6657050b2ddca2ac183c588"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.622E7599-C5E3-4DDC-9F7C-2A444CB241EB/libtatsu.xcframework.zip", checksum: "b355304b71e868c99a35b8c75cc0cfc516404c3a2c9a9484869ee1fef27b4642"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.622E7599-C5E3-4DDC-9F7C-2A444CB241EB/libusbmuxd.xcframework.zip", checksum: "cb31d82eaf5e2a6706922663bd1f867b1f46db463250aa6da95bf4c0c601d2d5"),
    ]
)

