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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.84993FCD-7A13-48D3-8CF5-BDCB97D7BDD6/libimobiledevice.xcframework.zip", checksum: "dc6907d569eee981b78607f78368444a90930303c1ddaab14170c238d9483958"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.84993FCD-7A13-48D3-8CF5-BDCB97D7BDD6/libimobiledevice_glue.xcframework.zip", checksum: "67eb0741714e073e25338a3e23795d288f3640ca0a2372c501d0daef712c637d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.84993FCD-7A13-48D3-8CF5-BDCB97D7BDD6/libplist.xcframework.zip", checksum: "fb6153d5bc83cba69c5bfe129b3984fbbdeb08c6524b8bd5355b2acfa5fd9ab3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.84993FCD-7A13-48D3-8CF5-BDCB97D7BDD6/libtatsu.xcframework.zip", checksum: "d167199c1320747305be236c872c3a1ae66c99effeae15658a1e201bdc72c1c4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.84993FCD-7A13-48D3-8CF5-BDCB97D7BDD6/libusbmuxd.xcframework.zip", checksum: "6ff3ed35405b13307c976406da8114d0aa4543b1368a4ccab0fa4f0edf6213d2"),
    ]
)

