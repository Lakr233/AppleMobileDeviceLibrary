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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8E6444E8-F943-4107-8302-8AC198B1BF73/libimobiledevice.xcframework.zip", checksum: "e9712ef6b72d946d5648a245e7452506532bd2965360cd840748015c1d962f6f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8E6444E8-F943-4107-8302-8AC198B1BF73/libimobiledevice_glue.xcframework.zip", checksum: "08da99a9ef64db47f173dcf2ad21b9dba416b2ea44bad176a2fee9dff7f86905"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8E6444E8-F943-4107-8302-8AC198B1BF73/libplist.xcframework.zip", checksum: "8d47192ce1b0097de20ee38d3d77fd2c5c5571c9d2ebda7c46dc7e90c54026fb"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8E6444E8-F943-4107-8302-8AC198B1BF73/libtatsu.xcframework.zip", checksum: "1d82152be81367bb5beda06c9291915beecd73c19ee5b80f33c8f6abe074c4d1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8E6444E8-F943-4107-8302-8AC198B1BF73/libusbmuxd.xcframework.zip", checksum: "6d128386cb20a0cbb4faa29ec9584c1733b4013fddffe179ca244b985f43cc64"),
    ]
)

