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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A4BA814A-D93D-432D-B5FF-6E79F3853053/libimobiledevice.xcframework.zip", checksum: "c31a1736d48151945a7a548cd9334438ac1bb5a55a1d8860161e99132a97f418"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A4BA814A-D93D-432D-B5FF-6E79F3853053/libimobiledevice_glue.xcframework.zip", checksum: "58887f41b3f0a59f9a7671b58f6ed35b1a05510d122145e41d621154c57dcb1d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A4BA814A-D93D-432D-B5FF-6E79F3853053/libplist.xcframework.zip", checksum: "88a7a2f94bd912c33797d9449c23965123e2b897e14e2627e5e28a04cd8afe64"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A4BA814A-D93D-432D-B5FF-6E79F3853053/libtatsu.xcframework.zip", checksum: "82caea69f656446c2cec697897a98a2b91858fac26449bd9116fe2c4239b31c4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A4BA814A-D93D-432D-B5FF-6E79F3853053/libusbmuxd.xcframework.zip", checksum: "580259ab3e17e0f1df77d2c593ae0c1ac764df01ed723adb3d3d9bbb77738bfb"),
    ]
)

