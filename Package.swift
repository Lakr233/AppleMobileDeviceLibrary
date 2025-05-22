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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.326782BE-27BA-43BC-9696-4A9F467FFBB3/libimobiledevice.xcframework.zip", checksum: "23571a47e79fc64e8cf5cab45ab6b07b23e953a4098c1c80d6b9a4f1e080449c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.326782BE-27BA-43BC-9696-4A9F467FFBB3/libimobiledevice_glue.xcframework.zip", checksum: "fbed019c698cc5767ff3f89d277efa363a4dfc6c59cca488cd03350df2a26b0a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.326782BE-27BA-43BC-9696-4A9F467FFBB3/libplist.xcframework.zip", checksum: "8b1adea20534306f2ac7b39347ad5ce56f60f9154d38942b591f056d5f5d5acd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.326782BE-27BA-43BC-9696-4A9F467FFBB3/libtatsu.xcframework.zip", checksum: "4f20eba46e552566b36e26257193fa0ddb606c86bd3579217c29641c9a514628"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.326782BE-27BA-43BC-9696-4A9F467FFBB3/libusbmuxd.xcframework.zip", checksum: "bfeba40792e16650a102125d5ab05604cf029647951e299cfbff586663ef3f0c"),
    ]
)

