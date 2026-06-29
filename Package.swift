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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F2D932E-060B-4B69-87DE-2DEF919082BE/libimobiledevice.xcframework.zip", checksum: "307ce000dd7958372092bb1c95eaa3a61b69159261a923242917246667ffe0d5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F2D932E-060B-4B69-87DE-2DEF919082BE/libimobiledevice_glue.xcframework.zip", checksum: "28ee5325711e7b08398a3eebcb8c805a7e7a5842eff19a7b7605858c76d92f81"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F2D932E-060B-4B69-87DE-2DEF919082BE/libplist.xcframework.zip", checksum: "b3fd6dc30f536a0d90e940784a050e01c4c9b45eeee691fd98507b10cabe1077"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F2D932E-060B-4B69-87DE-2DEF919082BE/libtatsu.xcframework.zip", checksum: "3059666900afaeb6cd9735656f1c8d1a540f720d32a59fc446c43e61a5a00683"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F2D932E-060B-4B69-87DE-2DEF919082BE/libusbmuxd.xcframework.zip", checksum: "85db135e66d5d7664b3c5c3635b70763dc71f3bda6e0bb12814efec360b73036"),
    ]
)

