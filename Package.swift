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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5A02E45C-E45A-4D8D-8418-F9112159B9A4/libimobiledevice.xcframework.zip", checksum: "8698279ff2e88378aefac8c937b5940816aa6d4080b2dafb55af15da04c36ce8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5A02E45C-E45A-4D8D-8418-F9112159B9A4/libimobiledevice_glue.xcframework.zip", checksum: "b31caf905f51cd7beda83315c608009eb8d59488f129b1d7689f2ff1ddf00556"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5A02E45C-E45A-4D8D-8418-F9112159B9A4/libplist.xcframework.zip", checksum: "7d980590bffd83f74b0bbff41403e0493751e4d3e975d4c4979e8d292ea27cb4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5A02E45C-E45A-4D8D-8418-F9112159B9A4/libusbmuxd.xcframework.zip", checksum: "9e95cf25cb81211211692a84ffc009ea24e45ca7a173b1a92ea746927e0d1db1"),
    ]
)

