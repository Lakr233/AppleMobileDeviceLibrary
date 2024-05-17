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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6EF8CCAE-DBAB-41D9-8791-EFC6612C168E/libimobiledevice.xcframework.zip", checksum: "ae7ce071f854f7b9a82022e883f5b868bd688e2b105f549b3f035592c0260e34"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6EF8CCAE-DBAB-41D9-8791-EFC6612C168E/libimobiledevice_glue.xcframework.zip", checksum: "bdac1d3e012198b8f6fba9a0dd574c408cba7180d8c5e413aa621767b68ea7d4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6EF8CCAE-DBAB-41D9-8791-EFC6612C168E/libplist.xcframework.zip", checksum: "733bf034ee21f7897db07e5baf391aa637ae77425d9103aa02a5806c1c6dc741"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6EF8CCAE-DBAB-41D9-8791-EFC6612C168E/libusbmuxd.xcframework.zip", checksum: "6058da25c7511d53992507dacee8c2f1057269a5c71fee7b87cba14e06432770"),
    ]
)

