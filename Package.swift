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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CBC4BC8C-BDAB-4871-970F-B13B6DD6F2EC/libimobiledevice.xcframework.zip", checksum: "ad309927056aba8509e55700bbe7dd985786331d1b35be78cfece467ba80e4b7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CBC4BC8C-BDAB-4871-970F-B13B6DD6F2EC/libimobiledevice_glue.xcframework.zip", checksum: "5d5a8fd872dfc6879386136f154ee10484ecb448546c6c7366f9b956795db440"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CBC4BC8C-BDAB-4871-970F-B13B6DD6F2EC/libplist.xcframework.zip", checksum: "e77b8556a8f1e037ba897143c213ea59947795701880e12fc64aaf4e7b5bc27d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CBC4BC8C-BDAB-4871-970F-B13B6DD6F2EC/libusbmuxd.xcframework.zip", checksum: "392797e9db8278dfc0620af21374652ac1c427538e9676867ca9ce0f7c6163ee"),
    ]
)

