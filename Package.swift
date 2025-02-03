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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7FB0CEED-78F7-4C6C-B2AA-0E7820961B2C/libimobiledevice.xcframework.zip", checksum: "ee90fb9b6586ca935f45f296904d9700f6445f4f468c480ffad883e615a988b6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7FB0CEED-78F7-4C6C-B2AA-0E7820961B2C/libimobiledevice_glue.xcframework.zip", checksum: "f2c7a9782eaf35883063b484cd366d47b28061ba775cac34711f3af852349e75"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7FB0CEED-78F7-4C6C-B2AA-0E7820961B2C/libplist.xcframework.zip", checksum: "ba3dca800c80e57853f3836b63b834b5a8c74f7521f8a82d8470c373cfe3effe"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7FB0CEED-78F7-4C6C-B2AA-0E7820961B2C/libtatsu.xcframework.zip", checksum: "80bb1fd255e4bb3afc3bda8f6b7eb31f310bb4681fb6f21f19ab94e1f50f820f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7FB0CEED-78F7-4C6C-B2AA-0E7820961B2C/libusbmuxd.xcframework.zip", checksum: "a0e69851b5a21997d9e272059d7698642b85f7239e427e7a72f0cbe375ebfde2"),
    ]
)

