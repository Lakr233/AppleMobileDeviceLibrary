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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.922088D7-C90C-49F8-B1D7-A5B5CDA11DE2/libimobiledevice.xcframework.zip", checksum: "5c01bbf293afe918c0846feb4510f45288cf6c60e3c07172ce989c509e4e5989"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.922088D7-C90C-49F8-B1D7-A5B5CDA11DE2/libimobiledevice_glue.xcframework.zip", checksum: "028d1029932fbf6bb33066838ceb3f57998c4d205fcfbc324ca725ec88b6e03b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.922088D7-C90C-49F8-B1D7-A5B5CDA11DE2/libplist.xcframework.zip", checksum: "23c98264a9d351c26c9a8c8992a2fe73c9f2fcb8713f42e7fe4f899a0c0df7cc"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.922088D7-C90C-49F8-B1D7-A5B5CDA11DE2/libtatsu.xcframework.zip", checksum: "30dc5b4e88b3fe37d1e7b5536f7e4ad66d2eda3eeeda152679e4eff22acbef06"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.922088D7-C90C-49F8-B1D7-A5B5CDA11DE2/libusbmuxd.xcframework.zip", checksum: "dd394cefa71aebd45d7bc7ea31930136aeeb451bb69b3aa7205ef141e4b1c623"),
    ]
)

