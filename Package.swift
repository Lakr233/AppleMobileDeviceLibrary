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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.28D320A3-775A-4D59-BE41-6BEE9D574C17/libimobiledevice.xcframework.zip", checksum: "ca2c0efb4354dfd2cf7ec7f99adb5f972a99dd1835c59705099550127db729f7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.28D320A3-775A-4D59-BE41-6BEE9D574C17/libimobiledevice_glue.xcframework.zip", checksum: "c71df53eb4845275ad31d48459cdba6ed42b8f8e5dae696af99ff65a85d91164"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.28D320A3-775A-4D59-BE41-6BEE9D574C17/libplist.xcframework.zip", checksum: "ab05e06132a111c43cd4827202b847ccf265e5047baf2daa6e209e52f5cd338d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.28D320A3-775A-4D59-BE41-6BEE9D574C17/libtatsu.xcframework.zip", checksum: "65e85cea6a6bb64d38c3c4d70fcd2bfde7e44ae48eefd95d3c870c5a28ff8ba3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.28D320A3-775A-4D59-BE41-6BEE9D574C17/libusbmuxd.xcframework.zip", checksum: "610d422d1242e5bf733192eeef571ffdde708050e6484a1aa58ceb29abdc39cf"),
    ]
)

