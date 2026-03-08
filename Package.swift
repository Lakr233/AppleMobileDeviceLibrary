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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D785537-7F0A-4125-AA77-D6E2BEB9ADC4/libimobiledevice.xcframework.zip", checksum: "1af349803d24f8f87a4b3539aceeabde69b387f1a43215bbdc997483e0289ff2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D785537-7F0A-4125-AA77-D6E2BEB9ADC4/libimobiledevice_glue.xcframework.zip", checksum: "fd8e9e3e8d665adaa2bc486071a86772b89568c996dc2fe7ae9992a8a8033185"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D785537-7F0A-4125-AA77-D6E2BEB9ADC4/libplist.xcframework.zip", checksum: "63e7dae01e273632d85128d95968e53ceaf8cd29073e3f21544f67a186339b4d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D785537-7F0A-4125-AA77-D6E2BEB9ADC4/libtatsu.xcframework.zip", checksum: "2deffe65718553ce3e7933e18bd54638938e509a997983b47beb1043d9530f28"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D785537-7F0A-4125-AA77-D6E2BEB9ADC4/libusbmuxd.xcframework.zip", checksum: "5d139d23f305b5a66c7c80f4080d4ec9894bf0fd0673b26c67fa9db5f5fba60a"),
    ]
)

