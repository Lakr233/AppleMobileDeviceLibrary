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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C30D7C17-BF5E-4347-BE28-29F84E03B2DF/libimobiledevice.xcframework.zip", checksum: "e14768ca73abc15d527cc3e2d6a9c9f92f926084bfa002a642791803b3cd5b07"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C30D7C17-BF5E-4347-BE28-29F84E03B2DF/libimobiledevice_glue.xcframework.zip", checksum: "3aade7541782a83b23bc192284d814fc6a6d04e578e55b97e4517926cb28c749"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C30D7C17-BF5E-4347-BE28-29F84E03B2DF/libplist.xcframework.zip", checksum: "d8869d09d424de7764c96165a61b49364ad9b2d76b3dbf9f7f92712df49091a0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C30D7C17-BF5E-4347-BE28-29F84E03B2DF/libtatsu.xcframework.zip", checksum: "fd59059610263cb895d4260b5050674fcc020a1929111fa5b0ccd8935228c97e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C30D7C17-BF5E-4347-BE28-29F84E03B2DF/libusbmuxd.xcframework.zip", checksum: "adb26ba36fd3fb3060f4d9059984d1f488a3dd0f0b1a77b0072039ab9b3b91fe"),
    ]
)

