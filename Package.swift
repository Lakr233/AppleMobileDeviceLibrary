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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9519F5D5-A92B-4E48-A52B-150C3C0CF1B0/libimobiledevice.xcframework.zip", checksum: "49b823d78ee95e31f1614d98e6f3856afff01cdf490705ccbb8bf19722d40d9a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9519F5D5-A92B-4E48-A52B-150C3C0CF1B0/libimobiledevice_glue.xcframework.zip", checksum: "b476dd49c09b7d3e2296a915ba4a5ca098bff17964e1ca544031de048ad0ec2e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9519F5D5-A92B-4E48-A52B-150C3C0CF1B0/libplist.xcframework.zip", checksum: "0d9f8e3b073b8fe7f636e64645df6c2492ea196d26d5b3ecf487018fe334af48"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9519F5D5-A92B-4E48-A52B-150C3C0CF1B0/libtatsu.xcframework.zip", checksum: "3b53f0031bc3ca38bddff075bea84f6a43422e9871c6bd5a73eb2f868963fa54"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9519F5D5-A92B-4E48-A52B-150C3C0CF1B0/libusbmuxd.xcframework.zip", checksum: "8a5651ea6d6e09ce5ab04f966bb4691bb0fd2c550da64f34cd8586a7f38d9595"),
    ]
)

