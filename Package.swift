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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC52B514-56B2-4573-AAE4-D3CB2ECEBCE7/libimobiledevice.xcframework.zip", checksum: "a8e9b2c6746e5ea76f7618afdc5c889a4352e150913bb39e6f1f8e4581972a1c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC52B514-56B2-4573-AAE4-D3CB2ECEBCE7/libimobiledevice_glue.xcframework.zip", checksum: "f09326091bf7f2a6469b4de09db115eec684919196ce66258aaefd7d144f2f7b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC52B514-56B2-4573-AAE4-D3CB2ECEBCE7/libplist.xcframework.zip", checksum: "06443d406511a155fd605421b611b89e1799e88c1141c23ed69dac4d11c9b70a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC52B514-56B2-4573-AAE4-D3CB2ECEBCE7/libtatsu.xcframework.zip", checksum: "5c85d460d46abe758129a7eff10713ff3f59bbdff4abe53125fbf732a6d0fb56"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC52B514-56B2-4573-AAE4-D3CB2ECEBCE7/libusbmuxd.xcframework.zip", checksum: "038c436d8d4c3864e1de3df3cb6a0529bd5e90827dcd9e796b7472c7ccdc5e2e"),
    ]
)

