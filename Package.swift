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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0159C68A-9E62-43AB-AEDB-8D440C59377A/libimobiledevice.xcframework.zip", checksum: "b3039f6121c9e794545a682bfc4a8c12eacbfd1ffb06c7a210d0065cc260ca65"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0159C68A-9E62-43AB-AEDB-8D440C59377A/libimobiledevice_glue.xcframework.zip", checksum: "a1a80011465f3dc221aafbd5e9df938b8f424aac81dd84fc6de8ffaef780270a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0159C68A-9E62-43AB-AEDB-8D440C59377A/libplist.xcframework.zip", checksum: "baf1e7ee64ddb5b2063dfa7f641eab244ce59e6b8c512f2eee6a1dd3fdd2c5f2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0159C68A-9E62-43AB-AEDB-8D440C59377A/libtatsu.xcframework.zip", checksum: "250c2e72dfd3992ddb99e6f485604ce62133d3dc4ca4183b8f2488cc1b42825d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0159C68A-9E62-43AB-AEDB-8D440C59377A/libusbmuxd.xcframework.zip", checksum: "117445ca5cc2c33cf7cab86a73a0938bfc83081702d3413bbcd60fdbbcb5fbaf"),
    ]
)

