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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CB4388D5-B56D-4DC8-A50B-862682ABD834/libimobiledevice.xcframework.zip", checksum: "ca2280bac08e52748237a9d845424f7f72564369fdda864351424c0ecff45418"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CB4388D5-B56D-4DC8-A50B-862682ABD834/libimobiledevice_glue.xcframework.zip", checksum: "27412fdcc0d4e515ca9f0c9e31c185a2ab970c93e7245422536705200ba31c6f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CB4388D5-B56D-4DC8-A50B-862682ABD834/libplist.xcframework.zip", checksum: "80525468a68da329562acc42f46cc10c1a80e758430223989205732e6bb2e07b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CB4388D5-B56D-4DC8-A50B-862682ABD834/libtatsu.xcframework.zip", checksum: "162526e420d3f5e49eab9a313b532b9b53cd2c9d8d31cd232ac2ec031314a305"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CB4388D5-B56D-4DC8-A50B-862682ABD834/libusbmuxd.xcframework.zip", checksum: "a17ff84585527eb9c981ca08d212165baf793a02ea9403645a8015866c9247fa"),
    ]
)

