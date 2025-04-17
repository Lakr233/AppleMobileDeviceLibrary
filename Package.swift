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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8EED1D27-A459-469B-BD1E-A01F02589652/libimobiledevice.xcframework.zip", checksum: "7e5bfd6d62f8cb7c49cd5edb8c34b8a1c2279360fb96c48c8e3271df6ad66ad0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8EED1D27-A459-469B-BD1E-A01F02589652/libimobiledevice_glue.xcframework.zip", checksum: "a357701a746df1ab8f817d0ce60f77aade67f256f44d0aba8a9b13bc3594d09f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8EED1D27-A459-469B-BD1E-A01F02589652/libplist.xcframework.zip", checksum: "32850d4a68afe4cf1ab7d411b8263aebe709afad078a7c08aa3fed11774bcd04"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8EED1D27-A459-469B-BD1E-A01F02589652/libtatsu.xcframework.zip", checksum: "9fedfe795633155edbf8d9088a3f56b3aabe2817a185cbaae0a818eb9b6d6971"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8EED1D27-A459-469B-BD1E-A01F02589652/libusbmuxd.xcframework.zip", checksum: "49fc067c13d2a9fe3907fa04e5d41d1686290d6ec4e110c4e53ff31bbb80b3ae"),
    ]
)

