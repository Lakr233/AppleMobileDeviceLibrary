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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6C78FF0F-D392-4019-80EE-F5A1C5A7D586/libimobiledevice.xcframework.zip", checksum: "3be3a9a9b310fa0bac4e1611b2d652906205fe020763100664399061b2e96af3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6C78FF0F-D392-4019-80EE-F5A1C5A7D586/libimobiledevice_glue.xcframework.zip", checksum: "bc763735c44e14433ad54a81849b4468b97fd777683ccb4abecb59f88981eb69"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6C78FF0F-D392-4019-80EE-F5A1C5A7D586/libplist.xcframework.zip", checksum: "cae89537701846747c2b0fe944eae741a00adf9020f6f66e26842db645ca85d2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6C78FF0F-D392-4019-80EE-F5A1C5A7D586/libtatsu.xcframework.zip", checksum: "cd4306963b317865e466cb4abc2972457181cc43bcab633c4fca35bf37401997"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6C78FF0F-D392-4019-80EE-F5A1C5A7D586/libusbmuxd.xcframework.zip", checksum: "b82a54d031be4d36794be8cf43fc9f8cc8f91cc7340a27d7b4cd55e5f2e9ca0c"),
    ]
)

