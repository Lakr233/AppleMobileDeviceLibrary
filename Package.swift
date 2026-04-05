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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.59099D0F-BEE8-4330-88CF-3E2C7AB283CD/libimobiledevice.xcframework.zip", checksum: "4b7603b6f7b2f15d15d604b3c9ec7d1a98450a43ada88cb2c39de03aa8d7eccf"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.59099D0F-BEE8-4330-88CF-3E2C7AB283CD/libimobiledevice_glue.xcframework.zip", checksum: "f37566bfac19c3f98fd125536762fd5266dae025e600610b2b07559b0039b776"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.59099D0F-BEE8-4330-88CF-3E2C7AB283CD/libplist.xcframework.zip", checksum: "8492fa553e26b02e9bb984173cc7eb006177ed4cc071a5be1c99c27f58cba2f7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.59099D0F-BEE8-4330-88CF-3E2C7AB283CD/libtatsu.xcframework.zip", checksum: "e69a5c56134c7fe5318717c5bf86ae5c0856ae068edafd662d80b631ebf50a34"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.59099D0F-BEE8-4330-88CF-3E2C7AB283CD/libusbmuxd.xcframework.zip", checksum: "45583430e89cfd41c2fa52b196da71022fab3c1eba7618dacc1c954f13b8c7d5"),
    ]
)

