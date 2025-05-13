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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0680E8E1-7CEF-42CE-AB5E-1E8923F576F8/libimobiledevice.xcframework.zip", checksum: "106898594de760889970d04eff93d3ce10385300fcbf40719a74c183a87a87ce"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0680E8E1-7CEF-42CE-AB5E-1E8923F576F8/libimobiledevice_glue.xcframework.zip", checksum: "a92a2fb979c885f6391f1cf320e844de69b5dea37ccdc88b68c35caf698d2765"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0680E8E1-7CEF-42CE-AB5E-1E8923F576F8/libplist.xcframework.zip", checksum: "b8dd3a4f6c8bb5bdb84e8281707ba5e81013308ff4f90c6e45f6eee2c5be1e1a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0680E8E1-7CEF-42CE-AB5E-1E8923F576F8/libtatsu.xcframework.zip", checksum: "22447b29b1cd2bc5e1fa09c425cbea30480bdf709cce1bf43d11fedd7e6b2ff4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0680E8E1-7CEF-42CE-AB5E-1E8923F576F8/libusbmuxd.xcframework.zip", checksum: "352ff568aa99e01b7c16ff6bb8d842ae18f1003f9bf17f0cb1bb09351bf50ce0"),
    ]
)

