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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.66476C5A-46FA-490A-AF07-26B18B04609A/libimobiledevice.xcframework.zip", checksum: "1267745310a3de2605f9eb40a4db5aca0a3a57191668ebc0f999f892d7ea45ba"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.66476C5A-46FA-490A-AF07-26B18B04609A/libimobiledevice_glue.xcframework.zip", checksum: "7b877d6a67562559924fea8d6a61c0efda2bef453a0e1692320141e2417aa84b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.66476C5A-46FA-490A-AF07-26B18B04609A/libplist.xcframework.zip", checksum: "533055316619801899b88a819c4e367fd4700716bf7dcf0826035f5ccd5ee969"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.66476C5A-46FA-490A-AF07-26B18B04609A/libtatsu.xcframework.zip", checksum: "34e3c931c77d9d2483c3936de2837b6737b214fb5bae2e43b8612c9d96dcd83e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.66476C5A-46FA-490A-AF07-26B18B04609A/libusbmuxd.xcframework.zip", checksum: "e53c401282c067fe0d14d8e0759cf38f47755bf764cdf03fde64fe3d81fb4f85"),
    ]
)

