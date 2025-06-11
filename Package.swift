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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.06415B2D-C9FE-458F-A51F-1AF85D7C3D4C/libimobiledevice.xcframework.zip", checksum: "c7f1df97684bdd6a3ade8118b4e8d1fc386048a97aa9f6462a8519b3dd1f2c67"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.06415B2D-C9FE-458F-A51F-1AF85D7C3D4C/libimobiledevice_glue.xcframework.zip", checksum: "011f008f984160a16a7c19925d2fc2b5446f9e83268a2f5743990d0156cdafaa"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.06415B2D-C9FE-458F-A51F-1AF85D7C3D4C/libplist.xcframework.zip", checksum: "4df10e74b0869fa96474ecde1586f1253ebaef15cb80226d6a735d9a7e07cabd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.06415B2D-C9FE-458F-A51F-1AF85D7C3D4C/libtatsu.xcframework.zip", checksum: "0d38403d70d26f110031883ec67255f5a5dcacb7d67eb0e04adc08b1781e5b27"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.06415B2D-C9FE-458F-A51F-1AF85D7C3D4C/libusbmuxd.xcframework.zip", checksum: "e073113b3ea14178ae868664bb15e2847381e34693740e79935fc28df5a6c83d"),
    ]
)

