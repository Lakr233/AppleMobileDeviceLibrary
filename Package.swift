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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4D81BF1-3934-4A2A-B487-D3994D25A7E2/libimobiledevice.xcframework.zip", checksum: "c08418e9bbaccad11840dbfa2c9edc70dd0f23dc938495778a4b65cd127b2433"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4D81BF1-3934-4A2A-B487-D3994D25A7E2/libimobiledevice_glue.xcframework.zip", checksum: "381f243c3aac8e19bdd1f81b9f8c2734878968982eb9961cf88bea119d76b0af"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4D81BF1-3934-4A2A-B487-D3994D25A7E2/libplist.xcframework.zip", checksum: "ab8d38e26a1bca4308a31712b9626b0004ff6116f0fb54716efb0a1db747b3e7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4D81BF1-3934-4A2A-B487-D3994D25A7E2/libtatsu.xcframework.zip", checksum: "e5baa6cc4b519c9b347e89d456a71aef76862e67a3968a9257397bdae73bc1a8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4D81BF1-3934-4A2A-B487-D3994D25A7E2/libusbmuxd.xcframework.zip", checksum: "c097980baf89f14123896827af692f8edc78aa5592cced8419643a6404e1bb39"),
    ]
)

