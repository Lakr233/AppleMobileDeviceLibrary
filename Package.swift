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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6D2F69A4-04DF-42FD-A15B-759C2B2DE146/libimobiledevice.xcframework.zip", checksum: "e05b90bb3ba137a511827665e30a5fef5bdec3add6ceea1ca6ac93b6063039db"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6D2F69A4-04DF-42FD-A15B-759C2B2DE146/libimobiledevice_glue.xcframework.zip", checksum: "4428c40497060b83a4b1f5aa430f57e08c57887f198727cea8954376025d34b7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6D2F69A4-04DF-42FD-A15B-759C2B2DE146/libplist.xcframework.zip", checksum: "3b6033ca3a82c8337d7e836be875c39cfa27f21a6fce22ff9079ac2ddb5edc5d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6D2F69A4-04DF-42FD-A15B-759C2B2DE146/libtatsu.xcframework.zip", checksum: "9fc1d358e155bd29cc46cc0de2bac5439ca6752d84419b6bdcc375a0df2d16da"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6D2F69A4-04DF-42FD-A15B-759C2B2DE146/libusbmuxd.xcframework.zip", checksum: "2a8e895b5de80e897374ef1febd6b83bbf9123b33abcee3e2a0ee51adfa59ad6"),
    ]
)

