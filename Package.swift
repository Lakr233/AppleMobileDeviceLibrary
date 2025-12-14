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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA9DCCDA-DC7A-471A-A342-C1CD60AC5EED/libimobiledevice.xcframework.zip", checksum: "2bde5e03535346b3b9a0bdb366bfecc8e348e580ec4f33853cf7c82292619fb7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA9DCCDA-DC7A-471A-A342-C1CD60AC5EED/libimobiledevice_glue.xcframework.zip", checksum: "2a1b11b323387ac2feda776e63337774e7cee5a0432c74212158a3eda5219b67"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA9DCCDA-DC7A-471A-A342-C1CD60AC5EED/libplist.xcframework.zip", checksum: "bb5ffbc5957d1784df690094344159b55c8bf1f7cec37a29e5ddd562ce1d3fcc"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA9DCCDA-DC7A-471A-A342-C1CD60AC5EED/libtatsu.xcframework.zip", checksum: "fc837b4c154cd9d99007f58027d04e21021053b5c0cb151d8c3ce8bb8ae925fb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA9DCCDA-DC7A-471A-A342-C1CD60AC5EED/libusbmuxd.xcframework.zip", checksum: "9e7019a25e9e1961f8fbb6ab1f0cbb1be9ac214ca1b5d01313237f297030d269"),
    ]
)

