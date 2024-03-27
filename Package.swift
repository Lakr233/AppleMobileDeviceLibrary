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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2A2044AC-D998-45A8-9A74-9E51BFF5363E/libimobiledevice.xcframework.zip", checksum: "a1239b507d5526e3261e7ea91c1c3e233ff8c7b2c5d55aecb24ce85c5e5eb38e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2A2044AC-D998-45A8-9A74-9E51BFF5363E/libimobiledevice_glue.xcframework.zip", checksum: "8a18ab63dd6cfc03d75e1dc116c9191cb7674bc7f2dab0fe915f89d36aa8fc16"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2A2044AC-D998-45A8-9A74-9E51BFF5363E/libplist.xcframework.zip", checksum: "9767b681977e2eaa21b94673811ca463e4789967b99cda534c7077ad250375c7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2A2044AC-D998-45A8-9A74-9E51BFF5363E/libusbmuxd.xcframework.zip", checksum: "a5c91832a11898f9cbdee98c3cdb7dc7f2c1e8d375b29b359b10f75eef157b47"),
    ]
)

