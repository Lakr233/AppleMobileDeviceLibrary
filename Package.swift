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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E5AA68B9-C0E3-496E-AD89-B86E882976E6/libimobiledevice.xcframework.zip", checksum: "33fb5492270472debcb9217ca5b54c11b4608ecb843246378d5936cce58e48cc"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E5AA68B9-C0E3-496E-AD89-B86E882976E6/libimobiledevice_glue.xcframework.zip", checksum: "66fe4ab9a721708fd9f42cd10adde7a8b5eecb8467c13363b4106fd9a71a422e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E5AA68B9-C0E3-496E-AD89-B86E882976E6/libplist.xcframework.zip", checksum: "8a948112ee367de67457b1985739b819e3c58dd83ba091b06b17e63b587d69cd"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E5AA68B9-C0E3-496E-AD89-B86E882976E6/libusbmuxd.xcframework.zip", checksum: "01231032a95be08435526523862f1c11c6cef77e99f1a2c5e32bd1dfb5d39743"),
    ]
)

