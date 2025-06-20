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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.802BBCDA-4EC1-4058-827E-D1976E156207/libimobiledevice.xcframework.zip", checksum: "f370c117d9e46c4c8ba29a02d5be75905df3c7970c8f002056a0c2bd26aadab8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.802BBCDA-4EC1-4058-827E-D1976E156207/libimobiledevice_glue.xcframework.zip", checksum: "77ff7f89c083eb1d3052fd05d44df8866ced95bbf3979946bac822aeeb7ab0fa"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.802BBCDA-4EC1-4058-827E-D1976E156207/libplist.xcframework.zip", checksum: "97730c5cc7a42d8e69d738270265ded214269fbc6bf6536b682882d82c4c9eed"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.802BBCDA-4EC1-4058-827E-D1976E156207/libtatsu.xcframework.zip", checksum: "90b01a421af91fb710933d66c34df7987e4b80ba32fcef60ea3def2082f5dd01"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.802BBCDA-4EC1-4058-827E-D1976E156207/libusbmuxd.xcframework.zip", checksum: "ade0a1fb19c1502c5764c8f9720ace1189d9d7ac980a661e78379799b0b01cd2"),
    ]
)

