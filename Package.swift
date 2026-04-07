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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BD73D2B2-E2F8-4A8D-BE12-D3DF68C96A80/libimobiledevice.xcframework.zip", checksum: "c0e5d41955c443ce246a6481b7e59d1e6825781159fdae718393d5c330c62e5f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BD73D2B2-E2F8-4A8D-BE12-D3DF68C96A80/libimobiledevice_glue.xcframework.zip", checksum: "873b6fbcef8b09df04452d4072a2b4bbc0b7bfa66f58f9bf16d7b37025e2779e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BD73D2B2-E2F8-4A8D-BE12-D3DF68C96A80/libplist.xcframework.zip", checksum: "4a6c168fea58e23bd2e835a501e8c4418d436123beb12b62ac191bed8effdaa2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BD73D2B2-E2F8-4A8D-BE12-D3DF68C96A80/libtatsu.xcframework.zip", checksum: "c074784ab863b3f819b1245a8d233e3c84da2bb796018637df10d7e554c5e5ac"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BD73D2B2-E2F8-4A8D-BE12-D3DF68C96A80/libusbmuxd.xcframework.zip", checksum: "56ce4d90cc8c7b6bc32210bd5db8c03d7d5ec350035297dbcba08c65abea5e80"),
    ]
)

