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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EBD37D8C-1195-49FD-9F69-9402897788D3/libimobiledevice.xcframework.zip", checksum: "185d709cee6a21717fefc692758c0cdf67234b031d5495a318e99f6c80bf637b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EBD37D8C-1195-49FD-9F69-9402897788D3/libimobiledevice_glue.xcframework.zip", checksum: "4b0a6244a98236c9d8d302daf9da1ba27700b76a8eab0fc8fe94bae78513465e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EBD37D8C-1195-49FD-9F69-9402897788D3/libplist.xcframework.zip", checksum: "3e2ffc31766d8087e78bd769e806f5458b6109caa0a99b1d251907c3570adff0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EBD37D8C-1195-49FD-9F69-9402897788D3/libtatsu.xcframework.zip", checksum: "fba765937af1070a9de4dc307ca47f8a76593de39a686a473ef653d592393660"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EBD37D8C-1195-49FD-9F69-9402897788D3/libusbmuxd.xcframework.zip", checksum: "0da2329ebcc9790e9baa92209725074bee6f06be141dc2c2af6afb732b140716"),
    ]
)

