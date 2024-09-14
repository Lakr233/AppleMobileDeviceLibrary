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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9BD06F2F-629B-4447-AE00-C2B82F4AB1E7/libimobiledevice.xcframework.zip", checksum: "db91602686829e2648286d7c62952284a8edca34b63bb24f372c0ce70b7436d3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9BD06F2F-629B-4447-AE00-C2B82F4AB1E7/libimobiledevice_glue.xcframework.zip", checksum: "0ce3ea018376597471a1408887ff15a28d3c0aaf5cdb35379abb813e1f6d61d2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9BD06F2F-629B-4447-AE00-C2B82F4AB1E7/libplist.xcframework.zip", checksum: "34585d1be595b6db1091559268356e91030daa08aadb3632c597994e78061371"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9BD06F2F-629B-4447-AE00-C2B82F4AB1E7/libtatsu.xcframework.zip", checksum: "544218c6ee091f2d51238f71d301a1f8baf32c414b60980b3d3c51b37b488c14"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9BD06F2F-629B-4447-AE00-C2B82F4AB1E7/libusbmuxd.xcframework.zip", checksum: "e758839951eb44399b4e2358371269371bfbfe470f9bda3f4cc9593760df1bbe"),
    ]
)

