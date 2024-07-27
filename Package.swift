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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EA5363FE-A3C9-41D2-9039-07CEEDD70C27/libimobiledevice.xcframework.zip", checksum: "769095ef2dcce7ea1850961153ce08a4c39dce72ab86b9547c684f465be45f50"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EA5363FE-A3C9-41D2-9039-07CEEDD70C27/libimobiledevice_glue.xcframework.zip", checksum: "baf31f048688865c485179cea94d65cb309aedb71af96ec65e27b43377ce1dc3"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EA5363FE-A3C9-41D2-9039-07CEEDD70C27/libplist.xcframework.zip", checksum: "f587cfa1b54af058fd9b7f0b9b2fb8508b9e5baf8f731c7bb8c5df0c3969f110"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EA5363FE-A3C9-41D2-9039-07CEEDD70C27/libtatsu.xcframework.zip", checksum: "9e551a48892d3baa915aee8dfea77a0fba34279713257ffa5bfc1ea13ab31c80"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EA5363FE-A3C9-41D2-9039-07CEEDD70C27/libusbmuxd.xcframework.zip", checksum: "d246a60c9c247ca8d7692d23af1d64153dba74acba467f28d478c68212025106"),
    ]
)

