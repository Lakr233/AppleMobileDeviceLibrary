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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F697E342-5307-47DF-B07E-5DC038614CF6/libimobiledevice.xcframework.zip", checksum: "578efc5b363b2cd640b5c0db40df717147852f70c9d329447c3d6a1546e69abe"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F697E342-5307-47DF-B07E-5DC038614CF6/libimobiledevice_glue.xcframework.zip", checksum: "3c854d29dd5bb31d17b4e5b90d9c2734070beee643772c8910a53904d1569bd0"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F697E342-5307-47DF-B07E-5DC038614CF6/libplist.xcframework.zip", checksum: "cc9e3921913c3519e533b2b2921e6a18c3e36f7add52602f9fb4b41bf07059c6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F697E342-5307-47DF-B07E-5DC038614CF6/libtatsu.xcframework.zip", checksum: "4aa81fd3934fd23b8af2768872f580f9dee378f583bc4eab89eb8643ce22e82e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F697E342-5307-47DF-B07E-5DC038614CF6/libusbmuxd.xcframework.zip", checksum: "b0de3a46333fe3d4b9e0741de07680711e17a30c7c79c7d2951a6b8fa7f5f4b0"),
    ]
)

