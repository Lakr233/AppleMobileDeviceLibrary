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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0E40A04A-948C-4634-9B98-25D0E12E9122/libimobiledevice.xcframework.zip", checksum: "06ff4f19b69e079367c45236201ee9a977e2addcf9380072e918b5c9885970bd"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0E40A04A-948C-4634-9B98-25D0E12E9122/libimobiledevice_glue.xcframework.zip", checksum: "1628244b5d3c98fc826d2f4df1afb93fe4dd2756e268fb377abdf8833cc4ff31"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0E40A04A-948C-4634-9B98-25D0E12E9122/libplist.xcframework.zip", checksum: "52332901242f374af376f7364d5be935ba694813c39a9b1291e3d97481e47672"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0E40A04A-948C-4634-9B98-25D0E12E9122/libtatsu.xcframework.zip", checksum: "3f425b97e68ecc92912080d0ab675d4dffdc8bcd1331f6f5e287defea7473fae"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0E40A04A-948C-4634-9B98-25D0E12E9122/libusbmuxd.xcframework.zip", checksum: "7a9fc32fe9abea1f683d6d38cc3635e7dc2e1a62ee40b625ed3cf40240d0672e"),
    ]
)

