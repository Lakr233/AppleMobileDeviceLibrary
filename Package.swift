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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2B7030EC-B2A3-42FC-9D13-5D50A32B1884/libimobiledevice.xcframework.zip", checksum: "b16769c1e643619b5ec411304d323e4e52236021080b74f4b63ab3b8c617dd09"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2B7030EC-B2A3-42FC-9D13-5D50A32B1884/libimobiledevice_glue.xcframework.zip", checksum: "b6bbb00c893b3329a072fd867ea7ef3c226157c8b2ae903b838ab77ad78c2d5d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2B7030EC-B2A3-42FC-9D13-5D50A32B1884/libplist.xcframework.zip", checksum: "28b9a6ce39b7ee9fbb3920572f415be2da17416770679dff63b052cf31ba66c7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2B7030EC-B2A3-42FC-9D13-5D50A32B1884/libtatsu.xcframework.zip", checksum: "e968e8db12b7ca4239af6e7601e75b60efb1c5b3a6ae690af405c597bba1e138"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2B7030EC-B2A3-42FC-9D13-5D50A32B1884/libusbmuxd.xcframework.zip", checksum: "53ec90b1841cae8e5552942a88005fa0eee8dd9844b61ea54abd941a9adbb9cb"),
    ]
)

