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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.17229F49-3003-4715-93BE-67C5B985F993/libimobiledevice.xcframework.zip", checksum: "cb1b2638cd3a51e67addbea271257581388ed9ab3fa66455c7344f18a9c6a506"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.17229F49-3003-4715-93BE-67C5B985F993/libimobiledevice_glue.xcframework.zip", checksum: "adde2745de2f4c544fefe24a4df67ecffefb617ccbd6770b7c6a0c06c2444832"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.17229F49-3003-4715-93BE-67C5B985F993/libplist.xcframework.zip", checksum: "01f427ec7204459fd8704a4840af814de1f380effdafbc5a18ac056a957ad0f8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.17229F49-3003-4715-93BE-67C5B985F993/libtatsu.xcframework.zip", checksum: "b37ee6221f12e8db49ad9bed50a8eeea93a41b467dd5419c2ed1178d55741dea"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.17229F49-3003-4715-93BE-67C5B985F993/libusbmuxd.xcframework.zip", checksum: "52334dc166af60aa9926c49566762773de5fc15605d9549e27cd216572f1e8fd"),
    ]
)

