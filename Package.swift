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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B903E8EA-FE08-429C-8C15-253949C5F9EF/libimobiledevice.xcframework.zip", checksum: "055bf31d0a1354ed43b2843ab77881376eabe4be740c2d49ea6c6ef8c03a5dc6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B903E8EA-FE08-429C-8C15-253949C5F9EF/libimobiledevice_glue.xcframework.zip", checksum: "6523ce28817a7273e787593ad8f21c3ecd599c31a4482b755733fe2669b526bd"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B903E8EA-FE08-429C-8C15-253949C5F9EF/libplist.xcframework.zip", checksum: "7492ce6261aac4d3bf9deff35f9a7b6532f752bef5baaffa04fb642f29dc4797"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B903E8EA-FE08-429C-8C15-253949C5F9EF/libusbmuxd.xcframework.zip", checksum: "b12fcdfcf75d423f8d7fd28202fc1e2e6ec727f960f855fcadfa489f2e8e7fbb"),
    ]
)

