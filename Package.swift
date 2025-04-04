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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D2129634-896A-40C9-B7DC-8AABAF4581B2/libimobiledevice.xcframework.zip", checksum: "da0d1b076bacfaa9c0ce8ca0d9573d0888bc001891f975d86f7e9453eab860de"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D2129634-896A-40C9-B7DC-8AABAF4581B2/libimobiledevice_glue.xcframework.zip", checksum: "871af6cec6c10a01ea01e93b699dfabf1fbb9527da209ea667885c98647787a6"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D2129634-896A-40C9-B7DC-8AABAF4581B2/libplist.xcframework.zip", checksum: "d10bae40c8ebdf342cac88fca91bf8114b6b822d73cc0f1c605dbd5595f39b95"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D2129634-896A-40C9-B7DC-8AABAF4581B2/libtatsu.xcframework.zip", checksum: "ec31951923e4dc0d578224fabcaddff387e9e3ba23118f2bc057632e1257db86"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D2129634-896A-40C9-B7DC-8AABAF4581B2/libusbmuxd.xcframework.zip", checksum: "9e5eb9e706f8533e10119c82dc64e8eedbfb6c004bc626e7bd791cf2679dbed9"),
    ]
)

