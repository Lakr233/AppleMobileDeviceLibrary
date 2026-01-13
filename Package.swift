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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.605AEC52-3BEF-4C9F-91D9-1833D7A51B85/libimobiledevice.xcframework.zip", checksum: "f1b958dc9a5aa99ba790b33360932e60a6202323dce7c64859dd03b2a28553cf"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.605AEC52-3BEF-4C9F-91D9-1833D7A51B85/libimobiledevice_glue.xcframework.zip", checksum: "8e947e5d4aa889c9ddaf3848e53b1393314143cfee2a84249723f12d81237665"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.605AEC52-3BEF-4C9F-91D9-1833D7A51B85/libplist.xcframework.zip", checksum: "b06109cf32a64769915984c24f1ec37c5b094d28084da2354e9daf566fa9b481"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.605AEC52-3BEF-4C9F-91D9-1833D7A51B85/libtatsu.xcframework.zip", checksum: "db32d1743519a4a38c250fee975f2be966bedab952d63465c30a9c1ecfb9b390"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.605AEC52-3BEF-4C9F-91D9-1833D7A51B85/libusbmuxd.xcframework.zip", checksum: "14da9a66b00caf1a4dd585651c981813a985a799bb6bdd2324741b1e7f9b4b55"),
    ]
)

