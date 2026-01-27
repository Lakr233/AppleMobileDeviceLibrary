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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.989A3214-A2D7-41FE-A7FA-818D75DF74FA/libimobiledevice.xcframework.zip", checksum: "dac28654424874bf9c4907ed327462ea1e0856974b479eab73b3279f4e3d3f55"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.989A3214-A2D7-41FE-A7FA-818D75DF74FA/libimobiledevice_glue.xcframework.zip", checksum: "d395595a7aad8ee86a0cd750151972e703bf4180eb7e1179a557a22b83548fd5"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.989A3214-A2D7-41FE-A7FA-818D75DF74FA/libplist.xcframework.zip", checksum: "5b089623fba2f559bf5f6b50014c0d2683ee5e98955bccd6a19377ed97a24b68"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.989A3214-A2D7-41FE-A7FA-818D75DF74FA/libtatsu.xcframework.zip", checksum: "fb96dccd1f23d47f3dad9a2446cabbb9dd80b089f889ae45d007e9f097bb7f51"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.989A3214-A2D7-41FE-A7FA-818D75DF74FA/libusbmuxd.xcframework.zip", checksum: "193e9c09af16163b3779d69bc695c7fa29fac2d7e001544a1aa3d2a01260f490"),
    ]
)

