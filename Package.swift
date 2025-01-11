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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.440F913E-7171-48B0-B2F1-2D9B77F2E703/libimobiledevice.xcframework.zip", checksum: "6503527c212e84322856b2f6d9992b2fde6e0ad70ec871da119bd1c0b03a39bf"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.440F913E-7171-48B0-B2F1-2D9B77F2E703/libimobiledevice_glue.xcframework.zip", checksum: "824672f9f6b33d9956d664af1eed9a9e63e9d88b0aa0fd7715d10debb01308d7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.440F913E-7171-48B0-B2F1-2D9B77F2E703/libplist.xcframework.zip", checksum: "42584605479badb9ba75d148d8206e2e497ba57caa53a48bc55850f87e26beba"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.440F913E-7171-48B0-B2F1-2D9B77F2E703/libtatsu.xcframework.zip", checksum: "173fde94be5a4b215ca804aa0e3e57d4713fa541943f566cea0827e765545d2f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.440F913E-7171-48B0-B2F1-2D9B77F2E703/libusbmuxd.xcframework.zip", checksum: "106f0849649495d38e9273c48f15d45980dc86d19174e346b6563759ccea079a"),
    ]
)

