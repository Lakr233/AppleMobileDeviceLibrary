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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EF6B5E16-C2A0-4F14-8DE7-522D1C53CFDE/libimobiledevice.xcframework.zip", checksum: "0ae212921b5f6a49b7016bdc36fe8a9354391e7950fe8d9bb107ac422a9f5214"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EF6B5E16-C2A0-4F14-8DE7-522D1C53CFDE/libimobiledevice_glue.xcframework.zip", checksum: "46cb2da92911808404ee56ac81e040640aff595f113f406a35344084e53fecd4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EF6B5E16-C2A0-4F14-8DE7-522D1C53CFDE/libplist.xcframework.zip", checksum: "3743dfdfcd0cf603e21e68ec2144cbebc8eaecaf20e111e34f41217b42784cc5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EF6B5E16-C2A0-4F14-8DE7-522D1C53CFDE/libtatsu.xcframework.zip", checksum: "3e7de09970afbff41a189c1d9ac71f605f17eb6566131a304ca59c510de5f001"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EF6B5E16-C2A0-4F14-8DE7-522D1C53CFDE/libusbmuxd.xcframework.zip", checksum: "2240b3dc8daaef339250a510fbba1b60fd9e8b26023624d3b22c3cbcd78cd7bc"),
    ]
)

