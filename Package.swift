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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5F63C440-6A8F-404A-943B-4333E0E8B7F0/libimobiledevice.xcframework.zip", checksum: "0aa89402a555f2fafe10a9141a922ef144be520c463ff24b985b1ec095ef03c9"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5F63C440-6A8F-404A-943B-4333E0E8B7F0/libimobiledevice_glue.xcframework.zip", checksum: "6f017122df47b8b841c06c60c707faa46007b0ce1a8ea0dc219ca049af44bf01"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5F63C440-6A8F-404A-943B-4333E0E8B7F0/libplist.xcframework.zip", checksum: "256f8af6713c0725628bc2955e2da262f0e561d3d5620cbeef301526397eba40"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5F63C440-6A8F-404A-943B-4333E0E8B7F0/libtatsu.xcframework.zip", checksum: "3b04566687bde7c610629e7970666ec34484d4f4ccb9ba6adf8960d62396900f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5F63C440-6A8F-404A-943B-4333E0E8B7F0/libusbmuxd.xcframework.zip", checksum: "d986b4b38306bb73e45528b06be420210107014bbd6a3ed332e12ad85337d49f"),
    ]
)

