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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E92022D7-B1B5-4ACA-93CA-EB27585DDAE7/libimobiledevice.xcframework.zip", checksum: "599f7818ab9cc9341e34d360a8e539b8bb4ad02e584aa791f5ca30914397c4da"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E92022D7-B1B5-4ACA-93CA-EB27585DDAE7/libimobiledevice_glue.xcframework.zip", checksum: "aa88cdfb07ee87f2c0cad9afc038234d433c90f0a7fc5ab7d4487efbe465451e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E92022D7-B1B5-4ACA-93CA-EB27585DDAE7/libplist.xcframework.zip", checksum: "29c1f073d76a06936985165cde6e1ec690592e2203a48476259c4febbc6aae03"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E92022D7-B1B5-4ACA-93CA-EB27585DDAE7/libtatsu.xcframework.zip", checksum: "8ae4871b1d24cd724b7eb5c522dc4b75b50858d70dc6e62b021de724fe7910e0"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E92022D7-B1B5-4ACA-93CA-EB27585DDAE7/libusbmuxd.xcframework.zip", checksum: "6e96b8bcf18a44ea341dda03e0ac713b150f9ba1e35f3429b90c392d6fa7a200"),
    ]
)

