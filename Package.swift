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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EED775E9-2B21-4180-B01E-F1B1FFBC9874/libimobiledevice.xcframework.zip", checksum: "8ad66b54dc5becc97b1eced142345d976d7f2f343ed9d64108f592eb2cd5a101"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EED775E9-2B21-4180-B01E-F1B1FFBC9874/libimobiledevice_glue.xcframework.zip", checksum: "ba0827844b472ec88a4c82dda7574f6eeaa035d75397d152c2460416c4d23c1c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EED775E9-2B21-4180-B01E-F1B1FFBC9874/libplist.xcframework.zip", checksum: "03183d061e1658f7bb7ca74cf523039a449dcb511bc8a3e074384b424ca45c9d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EED775E9-2B21-4180-B01E-F1B1FFBC9874/libtatsu.xcframework.zip", checksum: "9112b1dfb0e8acb33345cb08cffbd60a754b121590042a11944773dd637ae0d3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EED775E9-2B21-4180-B01E-F1B1FFBC9874/libusbmuxd.xcframework.zip", checksum: "53af699e281f3c9638e860b8cad714e194f95393d662dedcc9adaa1fccf816e6"),
    ]
)

