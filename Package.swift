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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6DD0A6C2-02A4-48E5-81F0-D5CF6758DED5/libimobiledevice.xcframework.zip", checksum: "54408b6bc5f3a9f7a381c01afeaa4e8d8408cec8ebf70bbf95467e9948b4d9c1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6DD0A6C2-02A4-48E5-81F0-D5CF6758DED5/libimobiledevice_glue.xcframework.zip", checksum: "e7aa58e71a1feacfda5a62b4488f050b3a24733d181aa7f55ad9d68f445a7eff"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6DD0A6C2-02A4-48E5-81F0-D5CF6758DED5/libplist.xcframework.zip", checksum: "f2afcb30f0c009c428b7557ea0a03e6a42e30ea7cd6e903e1eefb44677452c60"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6DD0A6C2-02A4-48E5-81F0-D5CF6758DED5/libusbmuxd.xcframework.zip", checksum: "8cb873d74cd5c501c71e8e621f8ac7cdbd1d15168981112cfe579bca98b0cfd3"),
    ]
)

