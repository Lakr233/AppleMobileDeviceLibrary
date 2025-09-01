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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.98FEC496-A1F0-440B-A3AF-20EDA51788A5/libimobiledevice.xcframework.zip", checksum: "889c710fca7a11ab30748fc0bf5ef2a7da14406036c0791bdb8942d5b800e7cf"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.98FEC496-A1F0-440B-A3AF-20EDA51788A5/libimobiledevice_glue.xcframework.zip", checksum: "c0e87fd2287ad891a660e5c8c01dc195e5a9d7675b4eaf693f96aa6e6083d4b4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.98FEC496-A1F0-440B-A3AF-20EDA51788A5/libplist.xcframework.zip", checksum: "b60b5f46cb89fff9ce84ab4975b71c7a703ff8b1fb41b7b9bff9feb84d549cbc"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.98FEC496-A1F0-440B-A3AF-20EDA51788A5/libtatsu.xcframework.zip", checksum: "e4b8fc3ca80bdf295aede48ae35e2a5c8bb4c50febd81b63866891bb23d86ec1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.98FEC496-A1F0-440B-A3AF-20EDA51788A5/libusbmuxd.xcframework.zip", checksum: "cf6a682b1d2180123c0a868d71674d06764d53de9e2c37a22c1ef9a01c59e981"),
    ]
)

