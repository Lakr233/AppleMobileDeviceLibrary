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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4D309EE3-ED7C-4C5D-BF57-639A67DC69DF/libimobiledevice.xcframework.zip", checksum: "75dce912a5a558b944d4905fe90a66f852b216a748653a3cd1468cec4a8e696a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4D309EE3-ED7C-4C5D-BF57-639A67DC69DF/libimobiledevice_glue.xcframework.zip", checksum: "998add94f617da705819ea6bf7723cd39508fb6354261b1e40ab77863eec234c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4D309EE3-ED7C-4C5D-BF57-639A67DC69DF/libplist.xcframework.zip", checksum: "958f13dc3c0a24b353113a0ddbe72df96e4bdb8577ed9a44081326bbd2feea51"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4D309EE3-ED7C-4C5D-BF57-639A67DC69DF/libusbmuxd.xcframework.zip", checksum: "621fed6193656584c1f31bf061195632c470325bb444fa0d0c662911f6b0ffb0"),
    ]
)

