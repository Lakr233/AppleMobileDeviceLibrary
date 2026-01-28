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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0DCDBD22-F0E5-42CB-9085-9D3B6DA5E68E/libimobiledevice.xcframework.zip", checksum: "b0facc4dd95768428a6f55a841df9722a1b75d891bdaf31cec8e635b2d17dbf6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0DCDBD22-F0E5-42CB-9085-9D3B6DA5E68E/libimobiledevice_glue.xcframework.zip", checksum: "37abcdbaca44e7155140a6a05c686531d0a72dbeacd2cf48c57936c4c28c87a7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0DCDBD22-F0E5-42CB-9085-9D3B6DA5E68E/libplist.xcframework.zip", checksum: "08946f44fe9b5f48f40fbfd8b33aadc213bc42b0b05d69c71c7ddb948b004e4a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0DCDBD22-F0E5-42CB-9085-9D3B6DA5E68E/libtatsu.xcframework.zip", checksum: "d242b8d57db23a5885e28b10263b787ed15f160a088890f2f70654927c156744"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0DCDBD22-F0E5-42CB-9085-9D3B6DA5E68E/libusbmuxd.xcframework.zip", checksum: "b7304ee7e1bc5ecee5dc3d6bf11032c91d699110d22b7bac7510ced32893c6a6"),
    ]
)

