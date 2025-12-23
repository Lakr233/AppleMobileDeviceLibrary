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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4715BD6D-8134-4812-B724-DC67DF80F377/libimobiledevice.xcframework.zip", checksum: "45af72d879f89735d4a65a8692b971b2a8686123cdc9f9b1fead4e3620fc8b43"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4715BD6D-8134-4812-B724-DC67DF80F377/libimobiledevice_glue.xcframework.zip", checksum: "f4d304357ca742abde156baa953069303db50d940ce4599ea152f731f2fa6247"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4715BD6D-8134-4812-B724-DC67DF80F377/libplist.xcframework.zip", checksum: "9264c5e7d823ca7c777ab1ead845aec40ec15636f4435f41cf0052d1331ca300"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4715BD6D-8134-4812-B724-DC67DF80F377/libtatsu.xcframework.zip", checksum: "694a1b39351783654d7ebe860d0a640684a1d8d95f1c9bd0161479e20eafc50d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4715BD6D-8134-4812-B724-DC67DF80F377/libusbmuxd.xcframework.zip", checksum: "7191640a093bb916e8249168c7365dc81437a41bdd4feb9f5ac7a2ca77e9fa9b"),
    ]
)

