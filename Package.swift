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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.79AE62B7-831E-490E-9619-3E90950024BE/libimobiledevice.xcframework.zip", checksum: "b103e8fc1c93ec320eca23549b92116e4b8f100156ae65470721272fa5e17e65"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.79AE62B7-831E-490E-9619-3E90950024BE/libimobiledevice_glue.xcframework.zip", checksum: "ba408782f1a69cea2e11d2670029bf9256293d0c6a7e6b3c37d612c0a771a1a8"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.79AE62B7-831E-490E-9619-3E90950024BE/libplist.xcframework.zip", checksum: "52067f517c44e3500c7df6343a2dded0ee198dfa6b8e5996ef2909aedb3e30d3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.79AE62B7-831E-490E-9619-3E90950024BE/libtatsu.xcframework.zip", checksum: "bbfd56e0164d0a09661edb0c6ee101c45e4e877cb305b99c16442b4d412b192b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.79AE62B7-831E-490E-9619-3E90950024BE/libusbmuxd.xcframework.zip", checksum: "83f0fa22925e1f43222ba7ebf8b6c285912a435ddc1cd7abe2dc91434b0826f0"),
    ]
)

