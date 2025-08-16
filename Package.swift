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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.63C0A25A-47DD-4D2B-8583-38182E24C1CF/libimobiledevice.xcframework.zip", checksum: "34694ac703d1dfd8fa9318225d583caa194804b2cc93f8945e16b3e8945b70f2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.63C0A25A-47DD-4D2B-8583-38182E24C1CF/libimobiledevice_glue.xcframework.zip", checksum: "dbb3d7b7012d03b9b145fb3908473c62ce15d1664fcfe9e144f93bb8402334d8"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.63C0A25A-47DD-4D2B-8583-38182E24C1CF/libplist.xcframework.zip", checksum: "4b4597e1dde0e287ba5e42b02bf478a3a580af3d8385f52e0529047ec5c7692a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.63C0A25A-47DD-4D2B-8583-38182E24C1CF/libtatsu.xcframework.zip", checksum: "5ad74a6e4e5478a4b625636c73f55b0dab7e2c0123f55aab5933ed2d532e8b30"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.63C0A25A-47DD-4D2B-8583-38182E24C1CF/libusbmuxd.xcframework.zip", checksum: "e76d8b1404275ce9b0496f8d02a6fd2e9f626fa7f7d1712fa99658026756759a"),
    ]
)

