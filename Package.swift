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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1AC13019-1392-45CF-95FE-437712B8F0C0/libimobiledevice.xcframework.zip", checksum: "a73f7c550e5030a9df6df9bc0a36dc31904105de1e11986812662e814eeb5350"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1AC13019-1392-45CF-95FE-437712B8F0C0/libimobiledevice_glue.xcframework.zip", checksum: "a56d867cf3025f622c643c3e189716ed827ac8889e4c1128b43361554e7af138"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1AC13019-1392-45CF-95FE-437712B8F0C0/libplist.xcframework.zip", checksum: "df42e754c9e74fed4a57517789a7db7718ef1e854db6b5e615821c1ff843205c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1AC13019-1392-45CF-95FE-437712B8F0C0/libtatsu.xcframework.zip", checksum: "fd681a1adcf159d82c8778c00406b7eaf09b0a2b0bf6fb74b0e6369cdfbde1dc"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1AC13019-1392-45CF-95FE-437712B8F0C0/libusbmuxd.xcframework.zip", checksum: "07f59b940599d9fbfce0a37aabd382c9ec59a7fb5bcb6abb06412a30f03f7744"),
    ]
)

