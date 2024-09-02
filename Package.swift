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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.259143EC-7129-4430-9A02-1A040C5A62DD/libimobiledevice.xcframework.zip", checksum: "ee7897f3058f4a60725f22ca3005b97859660620ee3cb7fd6bec4da21b92b0da"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.259143EC-7129-4430-9A02-1A040C5A62DD/libimobiledevice_glue.xcframework.zip", checksum: "21e120ea8e98e7d5569a45a5cc6edfa553ece02baef625b144dca5fc008d212c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.259143EC-7129-4430-9A02-1A040C5A62DD/libplist.xcframework.zip", checksum: "2d40aa06c25925448bd2ae7433553747a096225778bd06ce5aa2e249187b7eca"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.259143EC-7129-4430-9A02-1A040C5A62DD/libtatsu.xcframework.zip", checksum: "d0f76785c42c1e372662e1d90e3393057e81e38e3fe20ccd4f69b6605ba50ab2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.259143EC-7129-4430-9A02-1A040C5A62DD/libusbmuxd.xcframework.zip", checksum: "f18bd5c44610cf53548e3f6ad865bebd3304eb35d50b1fc2c61c430e76a36655"),
    ]
)

