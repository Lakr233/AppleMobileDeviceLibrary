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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDDAE172-5376-4AA8-B219-6CE8CD15A5A7/libimobiledevice.xcframework.zip", checksum: "af35a9e63585da79c3a26af272adf80c0b4f8e88227018ce8da5ddd6c7851640"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDDAE172-5376-4AA8-B219-6CE8CD15A5A7/libimobiledevice_glue.xcframework.zip", checksum: "03ac75bbf776ead9eeff0229964de8c34a88f23d7e5dc7cdfc6dc5c47d9495bc"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDDAE172-5376-4AA8-B219-6CE8CD15A5A7/libplist.xcframework.zip", checksum: "7b374c0c9b42ebea9bfd453f0470fe4b01ff88bf99b0412f46b47a5b0885616a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDDAE172-5376-4AA8-B219-6CE8CD15A5A7/libtatsu.xcframework.zip", checksum: "7febbe2abe6e7eb57522196b3a7fb1601c7bffb049954116e033a94a3a4d3a6b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DDDAE172-5376-4AA8-B219-6CE8CD15A5A7/libusbmuxd.xcframework.zip", checksum: "25294a1454b24eb647eac7f3913f234e93f73371020436fc755b475d698b731e"),
    ]
)

