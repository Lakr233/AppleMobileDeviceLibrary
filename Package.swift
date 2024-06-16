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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9867F371-45A0-40A4-A6F5-781A9736C259/libimobiledevice.xcframework.zip", checksum: "5132fdf7e660d214d4e2114a9286c5be0cb1ed7e7d5367f721a92b73259281a5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9867F371-45A0-40A4-A6F5-781A9736C259/libimobiledevice_glue.xcframework.zip", checksum: "ff5edb9643e7c3e4a6a9b64bc5af8632005e26996aeaa72ae988bfea791b1d89"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9867F371-45A0-40A4-A6F5-781A9736C259/libplist.xcframework.zip", checksum: "8d63961db73d62e62225a26555d86046830b884698cc223c42cc263c95943b77"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9867F371-45A0-40A4-A6F5-781A9736C259/libusbmuxd.xcframework.zip", checksum: "df48681c81421dadb3a68deaf9a84878369abe8a4223132285e5dc8f4c03ddcc"),
    ]
)

