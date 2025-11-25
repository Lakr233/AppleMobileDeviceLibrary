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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2BA90983-55C9-4D85-B51D-EC42303EA700/libimobiledevice.xcframework.zip", checksum: "a97b2d7cbb10bc10d9d9017a30918b346b89908dd10c486c947f1ac72031a8a1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2BA90983-55C9-4D85-B51D-EC42303EA700/libimobiledevice_glue.xcframework.zip", checksum: "ac5abe1363f03b73403951ab3754b8b0aa6ce6c9ecf1dd482f27dce088a0eb52"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2BA90983-55C9-4D85-B51D-EC42303EA700/libplist.xcframework.zip", checksum: "d87dc2477397bf795809360d40f2742f016f0555006ccf990e556ab189bb1192"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2BA90983-55C9-4D85-B51D-EC42303EA700/libtatsu.xcframework.zip", checksum: "0ab41a7a3b4d541d7d3e28c2cdc71eee3404a9c3842f25d473f7b287d21e76cb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2BA90983-55C9-4D85-B51D-EC42303EA700/libusbmuxd.xcframework.zip", checksum: "dd16efee71064d5e8c3b6474f07aa51ee8abb670821a56e6a4e6e9bb4b81e2e6"),
    ]
)

