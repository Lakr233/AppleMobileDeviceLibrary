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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40382F04-974F-4C2D-89C2-D8EBCEE759B4/libimobiledevice.xcframework.zip", checksum: "cbdfb10879dafe3eab2053803f0905a0a2c750ae3a460e1681b8d7a3321b9692"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40382F04-974F-4C2D-89C2-D8EBCEE759B4/libimobiledevice_glue.xcframework.zip", checksum: "d38241651d89733d3852124f1ddfa589000881a621a3171354a3e38b1f75bf07"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40382F04-974F-4C2D-89C2-D8EBCEE759B4/libplist.xcframework.zip", checksum: "864dea5038e343cff2bc5af85586d31bb356dc974207fcb11f0395dceff750ee"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40382F04-974F-4C2D-89C2-D8EBCEE759B4/libtatsu.xcframework.zip", checksum: "9227f70966ec10b87971ca43cad2ec42b21c5d1ab204cdc2d271ed5776869e09"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40382F04-974F-4C2D-89C2-D8EBCEE759B4/libusbmuxd.xcframework.zip", checksum: "c2414fdd1f1a8562eb01f7a6db6b7ef7140d66194e5dec97d51253870a4e2bf7"),
    ]
)

