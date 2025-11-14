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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AE2F9A23-A936-4FF0-A942-58AD7682B1F6/libimobiledevice.xcframework.zip", checksum: "65995bc2254a78bc2225af798fb45e3b4c3f43ac689c68f66de80e4bf5fecce6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AE2F9A23-A936-4FF0-A942-58AD7682B1F6/libimobiledevice_glue.xcframework.zip", checksum: "9357b3cd8cc156f5aab5cd777841ff86506a17040b5cac94c700bf97b57b7207"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AE2F9A23-A936-4FF0-A942-58AD7682B1F6/libplist.xcframework.zip", checksum: "2415da4944e918834d4b8e3bcc849fc3de7ba4fd0b9a5cde15c122ed2384f31c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AE2F9A23-A936-4FF0-A942-58AD7682B1F6/libtatsu.xcframework.zip", checksum: "7d3153f3f9bec10effeab4ae086fa0593ed873020781742ba4bd87a6bed86bc4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AE2F9A23-A936-4FF0-A942-58AD7682B1F6/libusbmuxd.xcframework.zip", checksum: "7129de6ef57d201ec5c71e2c0ab9b875a2a147f92f9823e6b86f40ff58556a6c"),
    ]
)

