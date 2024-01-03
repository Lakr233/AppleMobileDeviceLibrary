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
    targets: [
        .target(name: "AppleMobileDeviceLibrary", dependencies: [
            "libimobiledevice",
            "libimobiledevice_glue",
            "libplist",
            "libssl",
            "libusbmuxd",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D4A79061-C464-49E7-B0B0-C58FA7EF044E/libimobiledevice.xcframework.zip", checksum: "a04358ede965a6a363c5c6d9ea7f42d35374f50d237a3f90b8fdc9a52db64d05"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D4A79061-C464-49E7-B0B0-C58FA7EF044E/libimobiledevice_glue.xcframework.zip", checksum: "5911814fcc4f2a0ec6e8c434de536bb367b122ffc4748d3024dbcdbc50153f27"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D4A79061-C464-49E7-B0B0-C58FA7EF044E/libplist.xcframework.zip", checksum: "dcb3fcc9f88e6c9482d72557a60a0e3a2c8d60cbe84aab8971c6cb931aedd0ea"),
        .binaryTarget(name: "libssl", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D4A79061-C464-49E7-B0B0-C58FA7EF044E/libssl.xcframework.zip", checksum: "1fbb33a69f222e3707ed6e33aaa05ae09d5d3a6275d75d1e725d616f0ffef62f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D4A79061-C464-49E7-B0B0-C58FA7EF044E/libusbmuxd.xcframework.zip", checksum: "dacf399161d9f5866d3abb19aa0c6baefc2ce071939d972c76e95faa16241fe1"),
    ]
)
