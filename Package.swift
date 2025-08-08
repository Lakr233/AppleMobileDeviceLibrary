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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4C185D09-FF6C-4AAE-BA6F-650FA31F1673/libimobiledevice.xcframework.zip", checksum: "43e9ff9aa43139e9ebc926b211606830dd36827daa59f5cb27ff9e97441825a9"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4C185D09-FF6C-4AAE-BA6F-650FA31F1673/libimobiledevice_glue.xcframework.zip", checksum: "40f6144e5bdafc2421be70fbda0b612c93a2f254530ef7016424a351dcd6294b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4C185D09-FF6C-4AAE-BA6F-650FA31F1673/libplist.xcframework.zip", checksum: "cd4773cf140e43f7ac0e360a6a95b039d69725b716fbbf6a0936500c627a5605"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4C185D09-FF6C-4AAE-BA6F-650FA31F1673/libtatsu.xcframework.zip", checksum: "ccfc501cebb415d7b74ac2fe343a4ed7ec199a22c625663ddeb9d098a490e97c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4C185D09-FF6C-4AAE-BA6F-650FA31F1673/libusbmuxd.xcframework.zip", checksum: "16c6adc0646116df3adbc9e66b352674cd442454700d42842020bc72f7bf628c"),
    ]
)

