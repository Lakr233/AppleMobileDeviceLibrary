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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3149507C-6A93-456D-A0FD-94D08413CA6B/libimobiledevice.xcframework.zip", checksum: "a4e727cbc75d2d622d1e683c48f63edd591f33be31a7c863c497d7e6e4f0b1fe"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3149507C-6A93-456D-A0FD-94D08413CA6B/libimobiledevice_glue.xcframework.zip", checksum: "5a70f9c2e398f80722f4f1fd54443da65c66ec86d9b5bbf20adb9d3386e927fa"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3149507C-6A93-456D-A0FD-94D08413CA6B/libplist.xcframework.zip", checksum: "4312f575a9a33b81a90f602334b11b945b53e07092ee645ae0b5259c8b808602"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3149507C-6A93-456D-A0FD-94D08413CA6B/libtatsu.xcframework.zip", checksum: "00df758e53500e7ad31ad82de52a7eff2deff7e0ca82133a1855982f1247d4a9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3149507C-6A93-456D-A0FD-94D08413CA6B/libusbmuxd.xcframework.zip", checksum: "814d5e28872d66d21c3fc3881e316983a0d13f58f32c0e2a03ef2206aee8fd2f"),
    ]
)

