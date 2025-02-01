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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A0514D8A-1CE9-44F6-BFBD-5D20F271B5BC/libimobiledevice.xcframework.zip", checksum: "aa7d6b0fdb5005c28cc2f5a6ba7b6ea71613f98881877349da31ed7b17816f63"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A0514D8A-1CE9-44F6-BFBD-5D20F271B5BC/libimobiledevice_glue.xcframework.zip", checksum: "15e38191c351929dc4cbdb99ef6c6519c0f02d04cfa989bd3a2e4404a22da72e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A0514D8A-1CE9-44F6-BFBD-5D20F271B5BC/libplist.xcframework.zip", checksum: "3a4f100512bdc72e3c61036324283a3d3a3a56a8bd7004580ed287fe66e282be"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A0514D8A-1CE9-44F6-BFBD-5D20F271B5BC/libtatsu.xcframework.zip", checksum: "7df7e6eecad3d51fdb904c05239f7fe989aad5c6cfb1e2a88790a0710dd927e8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A0514D8A-1CE9-44F6-BFBD-5D20F271B5BC/libusbmuxd.xcframework.zip", checksum: "86e0865f631b31d72482bd24ed774566a4fc5c20863bec10aeaecbe0e106b1f5"),
    ]
)

