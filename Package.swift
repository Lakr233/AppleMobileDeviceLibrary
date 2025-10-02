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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F9B30C4-6FB9-420F-B87F-25E5B030EA89/libimobiledevice.xcframework.zip", checksum: "1e87e3ca83b76566d3b159dd7526b68222c777c1bca7a33ee73d6e44f84a8625"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F9B30C4-6FB9-420F-B87F-25E5B030EA89/libimobiledevice_glue.xcframework.zip", checksum: "44ccf94fc97da177805a4ee08ed14b806e30cd3ab88a6c64b025713348730010"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F9B30C4-6FB9-420F-B87F-25E5B030EA89/libplist.xcframework.zip", checksum: "ff7bbb0fea0469e1301b52583fe257fe2a39325e677298cef81f91d34f3c8024"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F9B30C4-6FB9-420F-B87F-25E5B030EA89/libtatsu.xcframework.zip", checksum: "0ee722805e0242aaa1a6d47be0342aa01492522c33f897b9f9b2b70834ffeb45"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F9B30C4-6FB9-420F-B87F-25E5B030EA89/libusbmuxd.xcframework.zip", checksum: "34022d978d90e583c2c40fab4f7281a95a089600628b25ae6bad1c4657f05f3f"),
    ]
)

