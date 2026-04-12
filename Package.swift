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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.166B1D93-A263-4326-891F-C8C4BD1DF260/libimobiledevice.xcframework.zip", checksum: "be70aef1dd873f816922ff65aa530e2c1e1f59326099e55926def19c7f1caa8f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.166B1D93-A263-4326-891F-C8C4BD1DF260/libimobiledevice_glue.xcframework.zip", checksum: "dbf28d88ae60e2ec78d95e4e17e23b98687be6ad0e01fbb7db89c17a5f4ae55b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.166B1D93-A263-4326-891F-C8C4BD1DF260/libplist.xcframework.zip", checksum: "b62896739b3304d1d85c99a1aa58b50c3eb13d849ffc2db474ce75efb9709a4e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.166B1D93-A263-4326-891F-C8C4BD1DF260/libtatsu.xcframework.zip", checksum: "8ef2937f1fd2b81c470faa951dff3307807ef2d98c854d93944197a3c4296ebd"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.166B1D93-A263-4326-891F-C8C4BD1DF260/libusbmuxd.xcframework.zip", checksum: "667e583c1ef452e058e0cd44284078800a628f6b333c76cd9850dbbcf7dfa154"),
    ]
)

