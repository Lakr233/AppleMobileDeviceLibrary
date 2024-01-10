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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F75169FA-3825-4028-A390-0A6DFB1C084C/libimobiledevice.xcframework.zip", checksum: "a04358ede965a6a363c5c6d9ea7f42d35374f50d237a3f90b8fdc9a52db64d05"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F75169FA-3825-4028-A390-0A6DFB1C084C/libimobiledevice_glue.xcframework.zip", checksum: "5911814fcc4f2a0ec6e8c434de536bb367b122ffc4748d3024dbcdbc50153f27"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F75169FA-3825-4028-A390-0A6DFB1C084C/libplist.xcframework.zip", checksum: "dcb3fcc9f88e6c9482d72557a60a0e3a2c8d60cbe84aab8971c6cb931aedd0ea"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F75169FA-3825-4028-A390-0A6DFB1C084C/libusbmuxd.xcframework.zip", checksum: "dacf399161d9f5866d3abb19aa0c6baefc2ce071939d972c76e95faa16241fe1"),
    ]
)

