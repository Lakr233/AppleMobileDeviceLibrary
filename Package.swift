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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40BC7E7A-8ACA-4351-85C0-48EFE12F2FFF/libimobiledevice.xcframework.zip", checksum: "61749eeda4428babc5b2c6e71ca5cc331fb879a38c63afb6f2ace9d5595c7dcb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40BC7E7A-8ACA-4351-85C0-48EFE12F2FFF/libimobiledevice_glue.xcframework.zip", checksum: "dee38f06fbc846571be974168f8efa6e975d79e2e07911cc504e8503babe762e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40BC7E7A-8ACA-4351-85C0-48EFE12F2FFF/libplist.xcframework.zip", checksum: "b5f0dfbf215fb28f8e659225f048872f339b65db047537676b88e5e77ac66f21"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40BC7E7A-8ACA-4351-85C0-48EFE12F2FFF/libtatsu.xcframework.zip", checksum: "c7708f406be58a89d012b84f9782f8726ee76c6190d859783984bd172eaf1e97"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40BC7E7A-8ACA-4351-85C0-48EFE12F2FFF/libusbmuxd.xcframework.zip", checksum: "69a104c0fe19d484ae4ed399493d08f7eac2cd1f604ca9803aa66056df12919e"),
    ]
)

