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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BFFF1CA5-814E-46B5-A3EE-12A6AAB0B6B5/libimobiledevice.xcframework.zip", checksum: "627278224237c9534796a5e66e6495d1425b0c39b6e57a84b341922ac9fc30ea"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BFFF1CA5-814E-46B5-A3EE-12A6AAB0B6B5/libimobiledevice_glue.xcframework.zip", checksum: "e753e74c7cf08d032d2f5cae7770457ed9621b10a6e71e357c07fdb0f9ade76f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BFFF1CA5-814E-46B5-A3EE-12A6AAB0B6B5/libplist.xcframework.zip", checksum: "b0f4f372e417fa4aeaef06d600be1b14b1b2bcafcf2fa295f6899108ed0f3af5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BFFF1CA5-814E-46B5-A3EE-12A6AAB0B6B5/libtatsu.xcframework.zip", checksum: "25d8999717256fb16282552bb709be9080071f227433a5f8a39d45919388dc95"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BFFF1CA5-814E-46B5-A3EE-12A6AAB0B6B5/libusbmuxd.xcframework.zip", checksum: "458e200bc4c0128c9bb1c71925c60a121ac479c674f451b49e8d6d950b2908a8"),
    ]
)

