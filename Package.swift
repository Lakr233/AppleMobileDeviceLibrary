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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EB109951-5893-42E8-B7D7-AF1188C31655/libimobiledevice.xcframework.zip", checksum: "b13cebea2636b1bcbb1f38ec7326fc6d574e738e5d026eb4276a9d24385ca5a0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EB109951-5893-42E8-B7D7-AF1188C31655/libimobiledevice_glue.xcframework.zip", checksum: "61bfc63f9e1c138c19f3163e811631dac1d2fb79207f0b4b037f2c1edbc0dbe6"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EB109951-5893-42E8-B7D7-AF1188C31655/libplist.xcframework.zip", checksum: "ed6581cbbbf5ae3d287110c2232a67b5157ee36acff52712b9a490652aff0c45"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EB109951-5893-42E8-B7D7-AF1188C31655/libtatsu.xcframework.zip", checksum: "a0fed9cd82cbe5c99587d241107197baa93b66d56271c36fe7bd5a68ba877184"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EB109951-5893-42E8-B7D7-AF1188C31655/libusbmuxd.xcframework.zip", checksum: "6d867b7462e83384caab34df9aba1efc86d59b6169dce4b9b85623017b3f3599"),
    ]
)

