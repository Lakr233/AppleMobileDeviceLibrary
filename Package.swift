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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AEC53DEE-3269-430B-BAB8-0241AFA0A90C/libimobiledevice.xcframework.zip", checksum: "4431eab08d63b45b327124964f70082ee24efbb74d226d1d10eceafbc95c9c24"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AEC53DEE-3269-430B-BAB8-0241AFA0A90C/libimobiledevice_glue.xcframework.zip", checksum: "7eb9fa5fd52be669df2ee5ca692cfdc6f9cf5d67885adb576158e58e1d10915e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AEC53DEE-3269-430B-BAB8-0241AFA0A90C/libplist.xcframework.zip", checksum: "821e7b7eb6ccbf6772afe10b41c64b9aef0f409e109e8a41e97cd66022044514"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AEC53DEE-3269-430B-BAB8-0241AFA0A90C/libtatsu.xcframework.zip", checksum: "ee74e802c4c9e1e22ee994760bf9ffaa1f1157c23102ada3ac2cd44682b88b12"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AEC53DEE-3269-430B-BAB8-0241AFA0A90C/libusbmuxd.xcframework.zip", checksum: "a3417790f279831220e41f989be26e2b99e1e0912c9cb23a5c2f9b2118b81eb8"),
    ]
)

