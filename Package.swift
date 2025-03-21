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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8EE3B11C-EC34-43F5-8412-062B67767CFD/libimobiledevice.xcframework.zip", checksum: "db16a9d55da7b1e3c279b0ea030a6da0da634a90abba3a3c92b32164641e6adc"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8EE3B11C-EC34-43F5-8412-062B67767CFD/libimobiledevice_glue.xcframework.zip", checksum: "bd3c6d481bb078bf63ced5622d7837e28cf3c3b0f81cd9d613c1c9ab0be3da67"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8EE3B11C-EC34-43F5-8412-062B67767CFD/libplist.xcframework.zip", checksum: "6e339ff0755c4b4f1cb7150a30acad7b52c26c8814fdeda4ea321bd55f35334c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8EE3B11C-EC34-43F5-8412-062B67767CFD/libtatsu.xcframework.zip", checksum: "b6ce7f08f4941d300d0bcbd3746c99da0edf84eaa888a24ad3839ded08e720b7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8EE3B11C-EC34-43F5-8412-062B67767CFD/libusbmuxd.xcframework.zip", checksum: "16e14dddf25f162fd784708a37d2d34de959137d3d8130562c46e4cfd24329fd"),
    ]
)

