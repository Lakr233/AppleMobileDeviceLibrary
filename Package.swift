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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F27164D2-D30A-4337-B2F0-B1FBE9B28753/libimobiledevice.xcframework.zip", checksum: "eb2596e39ff612826faca2a236c00db73063868afbd4ae2db7bf08c21216ea86"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F27164D2-D30A-4337-B2F0-B1FBE9B28753/libimobiledevice_glue.xcframework.zip", checksum: "cc97e06b19ee8c73bc728bb54fe28f1d34f3339a39217eef2ba9e86471b47858"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F27164D2-D30A-4337-B2F0-B1FBE9B28753/libplist.xcframework.zip", checksum: "ec6bcad19e52ec1ce0c544b56de3f987de0019f4fdf3cfc111421963c5231c17"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F27164D2-D30A-4337-B2F0-B1FBE9B28753/libtatsu.xcframework.zip", checksum: "d5c346d89d23939c0c8f43f2cf01972a0bc7a81b8549af01312923730cbee7b0"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F27164D2-D30A-4337-B2F0-B1FBE9B28753/libusbmuxd.xcframework.zip", checksum: "27a3257e3b36ddc1f2e288b48b17971e99faf20c3b563dfad4e8cf5011f62471"),
    ]
)

