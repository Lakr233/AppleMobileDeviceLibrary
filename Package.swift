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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0B1575A-F34D-467D-A61B-0D80CF34DAC0/libimobiledevice.xcframework.zip", checksum: "35d2affed58164db34977eed88409dac7cb065ea0475a9a896714246a4f30b56"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0B1575A-F34D-467D-A61B-0D80CF34DAC0/libimobiledevice_glue.xcframework.zip", checksum: "48bad0bee38e17d6251957e1ce5effa06850e1b08799e417f7d16bc84b2da62f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0B1575A-F34D-467D-A61B-0D80CF34DAC0/libplist.xcframework.zip", checksum: "9ae7e160bb14ac7a21681a22b65ae41e3c55d4e2865d2cb1fe51923f685bb0b6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0B1575A-F34D-467D-A61B-0D80CF34DAC0/libtatsu.xcframework.zip", checksum: "be7a34c3263374f807916b8aa78e49ed1e66e04de522d2c20574c3c89bb449e7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F0B1575A-F34D-467D-A61B-0D80CF34DAC0/libusbmuxd.xcframework.zip", checksum: "0d4e2d30d31e288d69dabd932e6748e3ba7e74c69096634b3e8f6c5ebd33fb50"),
    ]
)

