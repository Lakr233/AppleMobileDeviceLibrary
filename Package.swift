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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9E20578B-D298-4555-9275-C96ADE719432/libimobiledevice.xcframework.zip", checksum: "2cc84daa6e22a40cc335504bea1c727a8366d22d20e92f3e4de96dc86860ad26"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9E20578B-D298-4555-9275-C96ADE719432/libimobiledevice_glue.xcframework.zip", checksum: "1884979932a4262a5de22769b78dac2af7f0f6d10bd0f983754909b2638dd452"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9E20578B-D298-4555-9275-C96ADE719432/libplist.xcframework.zip", checksum: "7f8f5ed2443538e3b44180179b2eb673de7509d282d7b9d222916cfcd39b053a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9E20578B-D298-4555-9275-C96ADE719432/libtatsu.xcframework.zip", checksum: "d69214e5474d8036c46ded9776d1876fd3d979ba0788cc7bdb7f43313ef30272"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9E20578B-D298-4555-9275-C96ADE719432/libusbmuxd.xcframework.zip", checksum: "f513ddb56b45d73b68ae9fad25ad27528484bccd4a3e466b8d4bcd271874a9d8"),
    ]
)

