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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B2D3A094-3E6B-434E-BECA-673FFF51A2DB/libimobiledevice.xcframework.zip", checksum: "f72914cabcf9e965367fc447490f486f17f63f6cff1ea8ad878259e6131b9702"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B2D3A094-3E6B-434E-BECA-673FFF51A2DB/libimobiledevice_glue.xcframework.zip", checksum: "15f7761529d03143fde73bdb00d74338d89a8f73dcbb819b7eec6b53243387f5"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B2D3A094-3E6B-434E-BECA-673FFF51A2DB/libplist.xcframework.zip", checksum: "98b6a1951feef3ed60275d2a092c07ec1fbfc12660ef4f9e04478d69a01ff6f4"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B2D3A094-3E6B-434E-BECA-673FFF51A2DB/libtatsu.xcframework.zip", checksum: "ea0423ec64a5aa079061fcb8bbfe0d307391d0a67c6ebd58601e4911b7548bb1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B2D3A094-3E6B-434E-BECA-673FFF51A2DB/libusbmuxd.xcframework.zip", checksum: "b701a234566e66c963fe882b172b19672866062ad3e441401f6f24e8838189d0"),
    ]
)

