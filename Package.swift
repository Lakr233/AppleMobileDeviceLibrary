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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D3209081-905D-4B91-9786-55B631727384/libimobiledevice.xcframework.zip", checksum: "66c74bae01a5ab508beedaf38ecc5a705f8fac92cb0f22b41ff057d1d51f7725"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D3209081-905D-4B91-9786-55B631727384/libimobiledevice_glue.xcframework.zip", checksum: "1df6eb4c329661b3a93dec2af98705993eee10501559a0383e82d84f5b52c13b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D3209081-905D-4B91-9786-55B631727384/libplist.xcframework.zip", checksum: "3188bff5c8d0ac6cc83cf0502f0d755a3d4153c8aed9643c8e84b141068d3215"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D3209081-905D-4B91-9786-55B631727384/libtatsu.xcframework.zip", checksum: "d8ec3220ce0ae4851036a0d5c259608c6fbfebd7a79174fd0726b585d17df6ef"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D3209081-905D-4B91-9786-55B631727384/libusbmuxd.xcframework.zip", checksum: "37bb613da15555170b87c2d9e25f9e1261d24660c75b5efecd8da840bbf0d785"),
    ]
)

