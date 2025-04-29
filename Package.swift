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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.601A5F8B-6774-48A4-A65F-F7AEA16B1C6B/libimobiledevice.xcframework.zip", checksum: "5fbfab0bb057aa26c5e3c33d04ea36a3502984e18403b652be09d5606011b19d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.601A5F8B-6774-48A4-A65F-F7AEA16B1C6B/libimobiledevice_glue.xcframework.zip", checksum: "03147ff0d3609ccd27c5b5dc6c4c64d99921dc9db235754784c6a1cd802aa290"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.601A5F8B-6774-48A4-A65F-F7AEA16B1C6B/libplist.xcframework.zip", checksum: "2c9907b96595b1712a1cbd35d9afcf7c14a845cc75454da01936e545bda54293"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.601A5F8B-6774-48A4-A65F-F7AEA16B1C6B/libtatsu.xcframework.zip", checksum: "922c1435af082fc8e239450cd1de0684530bc0a079a19d3889d4a0b26e4a69e8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.601A5F8B-6774-48A4-A65F-F7AEA16B1C6B/libusbmuxd.xcframework.zip", checksum: "e7e490a69ef773406f33cf57f74b42bbdfb4f64e9f1d4e67f9a62801d1ce2469"),
    ]
)

