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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3660B255-3407-42F2-9B64-5C1F74D7DEE6/libimobiledevice.xcframework.zip", checksum: "ac120b6b133fb28dc20e301263b63396acd82f3304b86db3ade69114cb33553a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3660B255-3407-42F2-9B64-5C1F74D7DEE6/libimobiledevice_glue.xcframework.zip", checksum: "7060c665402ac0df0eecfcf581107b23571e4eb48a7fd823c8c9ae4764e4a031"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3660B255-3407-42F2-9B64-5C1F74D7DEE6/libplist.xcframework.zip", checksum: "39d90fbc62c9742424af3709595a5eab5e2512779bd85970520628f250311acb"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3660B255-3407-42F2-9B64-5C1F74D7DEE6/libtatsu.xcframework.zip", checksum: "47c543ead26a5d19eb450b82810ca8181f39e71cbc544743a80b8e87a3fa1ce8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3660B255-3407-42F2-9B64-5C1F74D7DEE6/libusbmuxd.xcframework.zip", checksum: "925604f7b963b270aa67b77397b12fea610f1be1172334c07febf482116c8d2d"),
    ]
)

