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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2C88AED6-ED29-46E9-93FD-FC00FF7B8BEA/libimobiledevice.xcframework.zip", checksum: "ddcd7e96c94418e95db5230ee4848e5ac8d0b3486745759053b99a6780aea1ac"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2C88AED6-ED29-46E9-93FD-FC00FF7B8BEA/libimobiledevice_glue.xcframework.zip", checksum: "56ee5a50d2cadd85374bf692bf3e5159d94f38fc34e847e7fa448aa0b7622ea1"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2C88AED6-ED29-46E9-93FD-FC00FF7B8BEA/libplist.xcframework.zip", checksum: "7f006caf245a92dadae13b63d54a70db6913ed50931c95c419a44b39f58271c8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2C88AED6-ED29-46E9-93FD-FC00FF7B8BEA/libtatsu.xcframework.zip", checksum: "0fc013259117aca88e9ab6626352b24059f14f7d759ec965063c3c232dd5ee39"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2C88AED6-ED29-46E9-93FD-FC00FF7B8BEA/libusbmuxd.xcframework.zip", checksum: "5d8d3c97e49a3b4aeafbd20fc95ca21147135ed7fe90f99aa67461f971ca8ab0"),
    ]
)

