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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA4CD778-99B9-4D1A-BF57-FED6599CA6D3/libimobiledevice.xcframework.zip", checksum: "8a55041221d3f859e8de5ff8c784fdbbb6560c7076ccfe52490dd4e50502d08a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA4CD778-99B9-4D1A-BF57-FED6599CA6D3/libimobiledevice_glue.xcframework.zip", checksum: "ffd7aa74c560a38784b7f7b4ed944d1d0c47385ba905b5ab06de95251ac16d03"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA4CD778-99B9-4D1A-BF57-FED6599CA6D3/libplist.xcframework.zip", checksum: "ec1c67d224823bf6c35829cfd7dd6eed1473dbaba88fca694803bc53e936adc0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA4CD778-99B9-4D1A-BF57-FED6599CA6D3/libtatsu.xcframework.zip", checksum: "4914a00e471992ef364d769d5813ba37d8023bf946a62e596b4100d273da9047"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA4CD778-99B9-4D1A-BF57-FED6599CA6D3/libusbmuxd.xcframework.zip", checksum: "6e4f22e16c135e5fa22c6759271119dface12251533d3d0588849a6c8404aa2c"),
    ]
)

