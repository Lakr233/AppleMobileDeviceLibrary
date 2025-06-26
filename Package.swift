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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CD46D00D-3ED8-4B1F-9442-F248D0E2954B/libimobiledevice.xcframework.zip", checksum: "5bfd437335129a4444bf600e5cd3cd13a8a62b1a6ef97ced7a71747bf1a6bf28"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CD46D00D-3ED8-4B1F-9442-F248D0E2954B/libimobiledevice_glue.xcframework.zip", checksum: "308ba432c6a2b2210b6cfd11470be6746ff6866cc6394f827d5f86013e08e1b2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CD46D00D-3ED8-4B1F-9442-F248D0E2954B/libplist.xcframework.zip", checksum: "aa5b7b8df5a3dabed9d7a7b21910516b024573eb87f0d4a67d27f97cacb22dc4"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CD46D00D-3ED8-4B1F-9442-F248D0E2954B/libtatsu.xcframework.zip", checksum: "a18b95c28b046841642c487234d3c9452456d7f88293745f177dc82215031c58"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CD46D00D-3ED8-4B1F-9442-F248D0E2954B/libusbmuxd.xcframework.zip", checksum: "59945bbb496a9e5fa9081c92135346a10725d5ebc8c133d52bf4b78e3f8439f4"),
    ]
)

