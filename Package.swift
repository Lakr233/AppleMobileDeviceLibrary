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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.25E1FE30-92D8-4A38-B478-EC6DA21F0DEC/libimobiledevice.xcframework.zip", checksum: "36b1667e67b0e640dae2e66184d28245bc524bc0b29a801a9bd9ff63b46c4ebf"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.25E1FE30-92D8-4A38-B478-EC6DA21F0DEC/libimobiledevice_glue.xcframework.zip", checksum: "14435238f4bd3467b0655c61009cddb044ab20b7cf9ac71a9cb209490c64d727"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.25E1FE30-92D8-4A38-B478-EC6DA21F0DEC/libplist.xcframework.zip", checksum: "e199c030318fd672e348a11539a5995bdb32c17d1cf0dc8a9cac43671edb4e75"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.25E1FE30-92D8-4A38-B478-EC6DA21F0DEC/libtatsu.xcframework.zip", checksum: "09dc71c1485f78450cb9f33e1dc926652aa656bdde709e9a3ce721ad25ab0df3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.25E1FE30-92D8-4A38-B478-EC6DA21F0DEC/libusbmuxd.xcframework.zip", checksum: "a192faa10f6ece0e50bfa2a58cf72aea385397982876aefe263cce49e225221b"),
    ]
)

