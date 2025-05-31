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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D3E49E99-EBD8-4A51-BC8D-A0881A73BCE1/libimobiledevice.xcframework.zip", checksum: "667e826179bf68c7695b801fb166e0a5a4fa047ef877ef73af899df0722f85af"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D3E49E99-EBD8-4A51-BC8D-A0881A73BCE1/libimobiledevice_glue.xcframework.zip", checksum: "70ccd37b8b15ad3c3b9fa37223503f15fb2194bee4fa770cd2e982e2587f860e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D3E49E99-EBD8-4A51-BC8D-A0881A73BCE1/libplist.xcframework.zip", checksum: "1b9d553d0fc0a34f2738583af1c428d4e0eba9ef78955a6e1de77c93e0610e9f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D3E49E99-EBD8-4A51-BC8D-A0881A73BCE1/libtatsu.xcframework.zip", checksum: "30a61ad7079d796860ebbda180ae9441c536c21238ec1c8a57533f3a79c7008f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D3E49E99-EBD8-4A51-BC8D-A0881A73BCE1/libusbmuxd.xcframework.zip", checksum: "08d7c0f4990081b5f9865b451f70257644f3b6867dcf05d0164eb1e5f5ab9e83"),
    ]
)

