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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8D88673C-9111-4155-B916-B5A579FAEBFA/libimobiledevice.xcframework.zip", checksum: "40670f26847a37f76a33216551d69bad5bf380bec8e3d1029237bfd34cbc0711"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8D88673C-9111-4155-B916-B5A579FAEBFA/libimobiledevice_glue.xcframework.zip", checksum: "5f54009bca30435937289f0397ce1596420f2dfc53401b5293190b25dfc8563e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8D88673C-9111-4155-B916-B5A579FAEBFA/libplist.xcframework.zip", checksum: "fa8fa5ce3f94adf9aff1de7f5e436ab727bc4c04944a3e82e21bd3bf3c8c9bf1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8D88673C-9111-4155-B916-B5A579FAEBFA/libtatsu.xcframework.zip", checksum: "bd4ec97a5635bd1fa736cff49eb5e69a164fe1eb948587d34ede9beec78a57b7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8D88673C-9111-4155-B916-B5A579FAEBFA/libusbmuxd.xcframework.zip", checksum: "38625bb9e3fb85419168628bde603fa3e008da04c403c93773c7d58346052479"),
    ]
)

