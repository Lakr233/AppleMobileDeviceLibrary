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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38B6695E-D72F-4036-AD73-6B7FF180D053/libimobiledevice.xcframework.zip", checksum: "8e4a48d4e6636985bd65f3bb68f9df26a02d6ed3b49691b676d46a676360b498"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38B6695E-D72F-4036-AD73-6B7FF180D053/libimobiledevice_glue.xcframework.zip", checksum: "37cd247e7ddd3b5580854f9ade1bb21366d60b13469287228c84b510273a3bc8"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38B6695E-D72F-4036-AD73-6B7FF180D053/libplist.xcframework.zip", checksum: "1866ff3084f7b8dea89f36adb1a88e0269a97cf46da10caac43d2d14b596997b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38B6695E-D72F-4036-AD73-6B7FF180D053/libtatsu.xcframework.zip", checksum: "9be67d26ad5e6541eb90af592f1fc86254863e312a3e6e69dc2cd98a3ef890d4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38B6695E-D72F-4036-AD73-6B7FF180D053/libusbmuxd.xcframework.zip", checksum: "5e2ff59ae7c0cc1b97aad1cc45435f664936226356fe33a172015fcfa03fbe54"),
    ]
)

