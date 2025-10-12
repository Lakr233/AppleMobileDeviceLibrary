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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.340E1488-8954-4891-96BE-F9864AA3A097/libimobiledevice.xcframework.zip", checksum: "fc2545ec85353a96553476dcdf2c83d2920700df8b54b24598db3d2d91a3c25e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.340E1488-8954-4891-96BE-F9864AA3A097/libimobiledevice_glue.xcframework.zip", checksum: "0b3a2635c9b2b841c91497a2b1c63c03f0903c0dc9264d7ca9a1691a396bf77b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.340E1488-8954-4891-96BE-F9864AA3A097/libplist.xcframework.zip", checksum: "39c1b32840028c14bedf437578bd5d9c681068596dfec8d1375bfb271ed1f219"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.340E1488-8954-4891-96BE-F9864AA3A097/libtatsu.xcframework.zip", checksum: "031b65d9490999fb5d11b2ed583c3ec6deabe4ad333d1cd64819b41b530a8087"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.340E1488-8954-4891-96BE-F9864AA3A097/libusbmuxd.xcframework.zip", checksum: "dc80f7eb2692e8dd1c07baa2a6aed4dabfaffb1687281b73e8acdaa1c1536882"),
    ]
)

