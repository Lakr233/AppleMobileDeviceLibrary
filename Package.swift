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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.91AAFE61-9A27-41DF-A80F-AD383EF3281A/libimobiledevice.xcframework.zip", checksum: "56579d656eff5e8f2c485e20484e6c9091c0ac9083075a49236721b3dd1db2ac"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.91AAFE61-9A27-41DF-A80F-AD383EF3281A/libimobiledevice_glue.xcframework.zip", checksum: "10681ce140fbd907220952fc05f638a456a6e156f54f3c718de0baff8c55abec"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.91AAFE61-9A27-41DF-A80F-AD383EF3281A/libplist.xcframework.zip", checksum: "bbc8ff6d6e7014e8709ca8ff1db59f1786584307021c8aeb6c6ccd8fc05f0364"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.91AAFE61-9A27-41DF-A80F-AD383EF3281A/libtatsu.xcframework.zip", checksum: "71a414ef1cf1af0881e022c00b70144469d19b27b0f49f7df8e80e8ad6b8f92f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.91AAFE61-9A27-41DF-A80F-AD383EF3281A/libusbmuxd.xcframework.zip", checksum: "8f3539acc54eb03f0af0e64a0624bf8ca9e463ddb4e9fedeb905796b3b33cb5c"),
    ]
)

