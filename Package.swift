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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8D0A1D53-D63D-4F00-B019-FCE31FDBA5A5/libimobiledevice.xcframework.zip", checksum: "6b062429255a81d02f46185291610b4d5eb26e9ecba7fb1ac3dfe915a7a19a3e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8D0A1D53-D63D-4F00-B019-FCE31FDBA5A5/libimobiledevice_glue.xcframework.zip", checksum: "f5fd227b6d2001be1c2157be8e0375adba8710d2626fa4cb8dafc452ec08dc84"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8D0A1D53-D63D-4F00-B019-FCE31FDBA5A5/libplist.xcframework.zip", checksum: "75cfccccb069455f10ed547eff0c07cab553834849364b2f7090d03ed59bfe58"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8D0A1D53-D63D-4F00-B019-FCE31FDBA5A5/libtatsu.xcframework.zip", checksum: "8d1f68e3f0599c9b512881d7fc3dbff3f539695e2a605cee53b54c767c939a50"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8D0A1D53-D63D-4F00-B019-FCE31FDBA5A5/libusbmuxd.xcframework.zip", checksum: "cf554b60efe3b963d00aa74e844e27b40f6ddfccfe6cde27c5ed43dbe0f3ed3e"),
    ]
)

