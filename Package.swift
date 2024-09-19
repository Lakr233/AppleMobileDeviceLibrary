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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7EAB2355-401C-4119-AA3A-C47C4788040B/libimobiledevice.xcframework.zip", checksum: "a3cd6d815cac5f2d8fb05a18aa207d6c4cc79619baffebff0e70f513bd1cf0a8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7EAB2355-401C-4119-AA3A-C47C4788040B/libimobiledevice_glue.xcframework.zip", checksum: "8457ef2d496b298455b8e58fe19dd9a1c90a1ff3670e2dcac15b069286df6b6c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7EAB2355-401C-4119-AA3A-C47C4788040B/libplist.xcframework.zip", checksum: "81d6a8c19e21a250f533e025effe73678819668f08d018025d2433fb101a9bea"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7EAB2355-401C-4119-AA3A-C47C4788040B/libtatsu.xcframework.zip", checksum: "5aa20a07bf827fcf5a71ce51ac0d62b62559c56eca66cbb486189e6ad9f9ec9d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7EAB2355-401C-4119-AA3A-C47C4788040B/libusbmuxd.xcframework.zip", checksum: "b5f01b2a8bcc04df03ac5f9ab46858f4696a07d730dd958c686b54a972dbab9c"),
    ]
)

