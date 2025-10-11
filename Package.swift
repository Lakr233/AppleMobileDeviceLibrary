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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9BAED21F-BB04-4BC3-8DBE-6F43D1F46F53/libimobiledevice.xcframework.zip", checksum: "53e8c94bbf4ebd11bf9740699a501bbccf5cfee5c867188a305f8b1f96ba7f20"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9BAED21F-BB04-4BC3-8DBE-6F43D1F46F53/libimobiledevice_glue.xcframework.zip", checksum: "87cfdf9265d5751293b0cb694ca37db43789336133dd628660f63d61b9d641e2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9BAED21F-BB04-4BC3-8DBE-6F43D1F46F53/libplist.xcframework.zip", checksum: "68b40fd0c6a2f27202e31d91758ed54c28b322ba8a5b6f286ac536c083f24d87"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9BAED21F-BB04-4BC3-8DBE-6F43D1F46F53/libtatsu.xcframework.zip", checksum: "02f8d246854f8a3417e577dc821f6786e4d4729aed759aba566f8e3106176a3d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9BAED21F-BB04-4BC3-8DBE-6F43D1F46F53/libusbmuxd.xcframework.zip", checksum: "6ddd3b9f83e292d57baf62efffd19ad4c442e6e5af598c30e90abcd5dff35f1e"),
    ]
)

