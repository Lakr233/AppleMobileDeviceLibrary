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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D74F388B-EECF-418D-A0E0-908B6EBCE247/libimobiledevice.xcframework.zip", checksum: "600789925ee41d832c54bdb9864ad9bf08a30a0e92f5ab935af167a70b7181d0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D74F388B-EECF-418D-A0E0-908B6EBCE247/libimobiledevice_glue.xcframework.zip", checksum: "5594c2b304172f483c205977234b99e3895534972b0c105433c9caa276f0a48c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D74F388B-EECF-418D-A0E0-908B6EBCE247/libplist.xcframework.zip", checksum: "48bb9f6b6bb0657879f5abdcdcca4285c60d1fc3919e7c6280d23f3c90f20cb9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D74F388B-EECF-418D-A0E0-908B6EBCE247/libusbmuxd.xcframework.zip", checksum: "698d085d237b3a83e7248ea58362e7d5747815e30c377b0d24c5777a5fdb766c"),
    ]
)

