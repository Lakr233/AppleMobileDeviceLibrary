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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.03A351EA-4C3E-42D7-BEBF-D47381FAC27F/libimobiledevice.xcframework.zip", checksum: "24f31d65ccb7ceededb32dde5800321b3b99cb7eae4f715fc032386dcbdc5c30"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.03A351EA-4C3E-42D7-BEBF-D47381FAC27F/libimobiledevice_glue.xcframework.zip", checksum: "f5045116740af666bcaa675c4c62a5e085b7899501e0e4aea1c141f523c7f5de"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.03A351EA-4C3E-42D7-BEBF-D47381FAC27F/libplist.xcframework.zip", checksum: "c5850d31f32fce86495fc3eeecd4091d4163faa75f62eca6cf49d9ae97054ba6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.03A351EA-4C3E-42D7-BEBF-D47381FAC27F/libusbmuxd.xcframework.zip", checksum: "3700c28f7020308ca6a6e54005e3f91b95f6ae4cbd8b8ca44de656f5257d20e6"),
    ]
)

