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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED412D98-DC10-426F-A47B-FA33031FDADF/libimobiledevice.xcframework.zip", checksum: "82bd027b639e6a4b5e6757e81bf9bc541bf3efd2c641289702ea02102c87a52f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED412D98-DC10-426F-A47B-FA33031FDADF/libimobiledevice_glue.xcframework.zip", checksum: "d29e6d0e7436fd217b68db956c2b7ff5e5233f5d90b1f92889e8cabaac2ad2f2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED412D98-DC10-426F-A47B-FA33031FDADF/libplist.xcframework.zip", checksum: "a411be7a4171607931db4974fc31c9851b2c9b87f0f8c0eb32b547db9a77272f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED412D98-DC10-426F-A47B-FA33031FDADF/libtatsu.xcframework.zip", checksum: "99051a9abef98b3555a5d6c20315a10eec88cbb1f1d384d7538baca3f7709fb4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED412D98-DC10-426F-A47B-FA33031FDADF/libusbmuxd.xcframework.zip", checksum: "04d6466b55a26cb17ab94d73ae0dd3fc194281719f904005ff87ba8489c30451"),
    ]
)

