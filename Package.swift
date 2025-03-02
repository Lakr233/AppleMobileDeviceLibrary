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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B7014D1E-FD9E-490E-9386-F92FD89111BF/libimobiledevice.xcframework.zip", checksum: "70d1a5265c95273a9195575b45f6e5fef728f4d1438a8b7f07f38598a4964084"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B7014D1E-FD9E-490E-9386-F92FD89111BF/libimobiledevice_glue.xcframework.zip", checksum: "b538f260d1373849157e4f1712d945b6e3c6354030b956e19996bcc2bd8aded8"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B7014D1E-FD9E-490E-9386-F92FD89111BF/libplist.xcframework.zip", checksum: "45446482e712d57ec43af23a6c05a6d2b550dc2d9b000563ad2483b5d6764e04"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B7014D1E-FD9E-490E-9386-F92FD89111BF/libtatsu.xcframework.zip", checksum: "3c0da6295f9a3c823645e2cc2a1dfff709add9ceab401c6ec8129dcef552d188"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B7014D1E-FD9E-490E-9386-F92FD89111BF/libusbmuxd.xcframework.zip", checksum: "92e676dc1fa233c17f8bd7be12ca86775f6b33c2d76c64e0e3544f9f7591c8be"),
    ]
)

