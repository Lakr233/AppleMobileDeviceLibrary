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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9086A6BA-EBF0-4013-9D47-C641B6269813/libimobiledevice.xcframework.zip", checksum: "94ce197dc0f1c4f9a4a8448d8745b44af15d6703a5d4b9a7523bd21f8c7264ee"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9086A6BA-EBF0-4013-9D47-C641B6269813/libimobiledevice_glue.xcframework.zip", checksum: "ab419b57c36b89600bb9c315ba8490d3926ce9537e8a558a094850d81ed04773"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9086A6BA-EBF0-4013-9D47-C641B6269813/libplist.xcframework.zip", checksum: "12c7f056a0188b43f78a5a516d2594b4622664f520c18c6b8cad83813b16f306"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9086A6BA-EBF0-4013-9D47-C641B6269813/libtatsu.xcframework.zip", checksum: "ad0b5a60393c3c45dadaa4d891fc85e206da49b688f3cddfb729cc870d416d44"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9086A6BA-EBF0-4013-9D47-C641B6269813/libusbmuxd.xcframework.zip", checksum: "0092733cac71c1d04da821a46571b9d3447fd05a8d87160a8cfab1a7ab639055"),
    ]
)

