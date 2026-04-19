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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FBBDD381-8DB1-4715-9721-44F34771E71D/libimobiledevice.xcframework.zip", checksum: "90641007996179da863f591f6ac0af65ec34528eae2a202bb312dedefa460fbb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FBBDD381-8DB1-4715-9721-44F34771E71D/libimobiledevice_glue.xcframework.zip", checksum: "900415a54b6d8afe8a7cfe15b9c744612496e03569d968a04add9afad7daaa91"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FBBDD381-8DB1-4715-9721-44F34771E71D/libplist.xcframework.zip", checksum: "8191cac6910a79bb5756579c1d1b9c00be572c08bef2eb87c6ba63eb55f26bc5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FBBDD381-8DB1-4715-9721-44F34771E71D/libtatsu.xcframework.zip", checksum: "774205c3e55242acc06b8d3bb98c9b330cfe1db2fec8dfe2cf7773c8405bb32c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FBBDD381-8DB1-4715-9721-44F34771E71D/libusbmuxd.xcframework.zip", checksum: "73ce99dbcd78a2c185834683193eab4164da83138224bfe4229c0f108e3a9f29"),
    ]
)

