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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.206594BA-4F0D-4E0F-87D8-66C8D62F4E1D/libimobiledevice.xcframework.zip", checksum: "e3246da5177f56d1a0704466d10ab1fe218909692f8c8cf77dd7cae9562abf3e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.206594BA-4F0D-4E0F-87D8-66C8D62F4E1D/libimobiledevice_glue.xcframework.zip", checksum: "83d3d7c27c2fc9302a146651a8b60f3be4fca07bec9aa3f7ac7209404908f98f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.206594BA-4F0D-4E0F-87D8-66C8D62F4E1D/libplist.xcframework.zip", checksum: "e57f350f27f554cd3bb2daa2b433cf67fc1fc6bb1a6ac573e68d517618292f4a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.206594BA-4F0D-4E0F-87D8-66C8D62F4E1D/libtatsu.xcframework.zip", checksum: "6a80dfe69201b4996a2efdb90da5589a9f7aba845d1a61eac3240b6c3b76cb87"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.206594BA-4F0D-4E0F-87D8-66C8D62F4E1D/libusbmuxd.xcframework.zip", checksum: "143448d8fcd1303be0fa312d4f1720c18118b8ef252a0913d1afcf09242ef77d"),
    ]
)

