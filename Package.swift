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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6BCF245F-BE55-4EF7-A8D9-9EC387B88373/libimobiledevice.xcframework.zip", checksum: "72a9187f2511b8776feed6f0b85713c4d1cc786a921350ae4224d164b510277c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6BCF245F-BE55-4EF7-A8D9-9EC387B88373/libimobiledevice_glue.xcframework.zip", checksum: "5bef00623dd5fe7749e6071c688eb4fd491292131fe618ec812c80a408562943"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6BCF245F-BE55-4EF7-A8D9-9EC387B88373/libplist.xcframework.zip", checksum: "f50e8b18150e49b3147879b4d5293f2af3c9b9d3041b362a31eb732580db9e29"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6BCF245F-BE55-4EF7-A8D9-9EC387B88373/libtatsu.xcframework.zip", checksum: "59cd28927ce61a005b8cf1a09edeb7dad589df782b6d0bc4751108568af52501"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6BCF245F-BE55-4EF7-A8D9-9EC387B88373/libusbmuxd.xcframework.zip", checksum: "6e4283dc586c70860d8ed43adb4c02a81f8aa6d39befff915b0b00491473b665"),
    ]
)

