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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7237424F-E7DB-4311-BFD1-43E5ACA1C140/libimobiledevice.xcframework.zip", checksum: "ccf299dcf32fa3a613e1b5ee8a31afa9089fdf94cd6da7668b113b583f7ace55"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7237424F-E7DB-4311-BFD1-43E5ACA1C140/libimobiledevice_glue.xcframework.zip", checksum: "5e84a2468480860d00dd1463cbc57521d387504fa9bd22dda3c749e7dc9a150e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7237424F-E7DB-4311-BFD1-43E5ACA1C140/libplist.xcframework.zip", checksum: "2117d3880303d119955d411cb3bcb2aad6e17a186bc854d4d280e13341c131ed"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7237424F-E7DB-4311-BFD1-43E5ACA1C140/libtatsu.xcframework.zip", checksum: "5c443c3be2d62ccd3f3739246acf462ec05bb2c0bbecc9c98b27c50d1ce87ef8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7237424F-E7DB-4311-BFD1-43E5ACA1C140/libusbmuxd.xcframework.zip", checksum: "35325e545f2988aa13fdc58de9e54d1ba277189c3f7c5b17a7b8dbb5748036b3"),
    ]
)

