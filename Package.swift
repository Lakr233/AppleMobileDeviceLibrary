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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52B4EB06-8C96-4642-8AF2-83066C37A59E/libimobiledevice.xcframework.zip", checksum: "734313aebec9c76cddfd2d588fd0f54060cd5ee122f04cd023deb61d5269ecf1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52B4EB06-8C96-4642-8AF2-83066C37A59E/libimobiledevice_glue.xcframework.zip", checksum: "ea780d37c550d0e1eebba28e038fdeeb1b71758cbf35d17ad7b2bdf2db11f11d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52B4EB06-8C96-4642-8AF2-83066C37A59E/libplist.xcframework.zip", checksum: "0e476007a3d7da98f5eb60fe47e112498c1b5b97f751f5e5ad28bb3f02d40cdd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52B4EB06-8C96-4642-8AF2-83066C37A59E/libtatsu.xcframework.zip", checksum: "75f73148221e01e778ad4cca2f5331b18cadc6e84cbec7f7342bbc162673bad0"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52B4EB06-8C96-4642-8AF2-83066C37A59E/libusbmuxd.xcframework.zip", checksum: "fca2c09d37be86fa1ff2fe61fef250fcead8adb6b4d080690671ce8aeb26ad03"),
    ]
)

