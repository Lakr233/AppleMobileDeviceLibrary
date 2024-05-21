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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E933C280-C78D-4D37-A63C-8E119E8BF01C/libimobiledevice.xcframework.zip", checksum: "bfcbe8f8358b6b5b3156772371e7ac5eafdb746d2f1a5aacdff0a4902b267af8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E933C280-C78D-4D37-A63C-8E119E8BF01C/libimobiledevice_glue.xcframework.zip", checksum: "ba8d9986baebea80fa68782647b2db878cd254d05667d53f30bd215fdf56cc47"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E933C280-C78D-4D37-A63C-8E119E8BF01C/libplist.xcframework.zip", checksum: "bada643a7d6e1f0f17a3d9a3bb35d7b7dcb5c1e71c0736b5dd92ed9b8f92426d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E933C280-C78D-4D37-A63C-8E119E8BF01C/libusbmuxd.xcframework.zip", checksum: "b55fc3eebae4b86dd2ceb6efef698ca2df3c2294ac9746d1d3fc88762fb36119"),
    ]
)

