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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BB5C6819-43DF-486A-AF5C-966D6C90B97E/libimobiledevice.xcframework.zip", checksum: "6cde3286d74a725d17d893790105a8b4d3b967280f63242ff5fb092809b0d459"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BB5C6819-43DF-486A-AF5C-966D6C90B97E/libimobiledevice_glue.xcframework.zip", checksum: "3f62326bf6e23683177d97c17a3ee0b8c834f90d7eab72a8de0da89b735c7911"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BB5C6819-43DF-486A-AF5C-966D6C90B97E/libplist.xcframework.zip", checksum: "7f8c52a8cacf775820b6b58c9b81cdb589465e03e5975e3b14b3cc8c8c18da16"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BB5C6819-43DF-486A-AF5C-966D6C90B97E/libtatsu.xcframework.zip", checksum: "5e88dae62a872d3dd8c77a6d25a302130978c202cf4e074b9f8fd88ef3f4a496"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BB5C6819-43DF-486A-AF5C-966D6C90B97E/libusbmuxd.xcframework.zip", checksum: "a29cccfb48d5bc8befd7384e128db43b844f383b28af57001b3f1e0f7344f113"),
    ]
)

