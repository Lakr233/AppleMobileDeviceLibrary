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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BF827DBC-3D30-41C6-8560-3162FEBE0EC0/libimobiledevice.xcframework.zip", checksum: "f7f06d40749195b198e070932f62038a8a0b3b956728ef34ec39bf3e845d3337"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BF827DBC-3D30-41C6-8560-3162FEBE0EC0/libimobiledevice_glue.xcframework.zip", checksum: "4296bc2c83392893a956e0b0ca2b96c1a2e4b0a3810055265331f5f4b4155d50"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BF827DBC-3D30-41C6-8560-3162FEBE0EC0/libplist.xcframework.zip", checksum: "6427c668836513b815df4807c0ca66494b5c964f2a257d27b8077df657965d2c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BF827DBC-3D30-41C6-8560-3162FEBE0EC0/libtatsu.xcframework.zip", checksum: "1a8239804c38e0b895f2847813754ab006c2ee16191abe8982226bca905c40a6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BF827DBC-3D30-41C6-8560-3162FEBE0EC0/libusbmuxd.xcframework.zip", checksum: "2a38b6f3e4c423c34c900bf457ddb306de1357ec3b7e1ce939f4fb2415647151"),
    ]
)

