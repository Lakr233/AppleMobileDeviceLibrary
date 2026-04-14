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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0D16E869-3ACA-41BA-9B87-44F2DED9AE18/libimobiledevice.xcframework.zip", checksum: "048a6cb867da752fafe3faebf62acb527e7d26db18dc970f4ad8f63ee736ecd1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0D16E869-3ACA-41BA-9B87-44F2DED9AE18/libimobiledevice_glue.xcframework.zip", checksum: "640581dff9b273164b9a95709afb4dfd7c4e5a4c45a55f940c0092fefe7c2f68"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0D16E869-3ACA-41BA-9B87-44F2DED9AE18/libplist.xcframework.zip", checksum: "4e0a8d982fa65756a7f85d9daa55823204da48ccce9dacfb889fe533a4e42edf"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0D16E869-3ACA-41BA-9B87-44F2DED9AE18/libtatsu.xcframework.zip", checksum: "98bc9d0c057dc06aab1d39ecd120f62e01d7db3c45dea8f7e588309b0649d91e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0D16E869-3ACA-41BA-9B87-44F2DED9AE18/libusbmuxd.xcframework.zip", checksum: "8c71e898d4686d734984a2a5cb6c047e36f4e255a85d053536581eea26953a15"),
    ]
)

