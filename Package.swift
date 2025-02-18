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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3A69C90-EAFC-4073-8A1E-0D59778030D0/libimobiledevice.xcframework.zip", checksum: "e9557bd001df69edc5383ffe11e057f1aa0c68d08d474f53248675b4fc934a53"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3A69C90-EAFC-4073-8A1E-0D59778030D0/libimobiledevice_glue.xcframework.zip", checksum: "b7ae95a8a4d6dec85164b3761f2f4221b156c26f94f38b7a1289c7393352a30b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3A69C90-EAFC-4073-8A1E-0D59778030D0/libplist.xcframework.zip", checksum: "98d900fb84e268f5f8d347bf7ab7fe4efa6f69d0676a71ae2405764ec03294a8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3A69C90-EAFC-4073-8A1E-0D59778030D0/libtatsu.xcframework.zip", checksum: "ba1f3dc0150f70c1616c9976ec5db4aa13381f0fd431817ea6fc8c4f6d7217c9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3A69C90-EAFC-4073-8A1E-0D59778030D0/libusbmuxd.xcframework.zip", checksum: "9878a6eb9f8e286e38c916d3183b9fb841ef1a8545ece41c21a58be553a94fde"),
    ]
)

