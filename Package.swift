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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.93398DCC-E6B9-47DC-BF1D-58BBC35CC33C/libimobiledevice.xcframework.zip", checksum: "88d092b7979f1d77c725b09693db50053c8a80ed60537a0036de5c45259ec2bf"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.93398DCC-E6B9-47DC-BF1D-58BBC35CC33C/libimobiledevice_glue.xcframework.zip", checksum: "c95200cc4971becd9797099eb9d3adbf910b2461dac4e7b5fb3c519090c40ecd"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.93398DCC-E6B9-47DC-BF1D-58BBC35CC33C/libplist.xcframework.zip", checksum: "38723c03b296167055c1c0e8c49fc43066d637fc5cf16a525e80fee443c83b74"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.93398DCC-E6B9-47DC-BF1D-58BBC35CC33C/libusbmuxd.xcframework.zip", checksum: "30f3b61f58d08ed2e301ea7d884737cbe3734ab7f115d4267ad3ae2a0854870b"),
    ]
)

