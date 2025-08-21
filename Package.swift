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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.86811943-F59C-4F31-849A-51F2E5DE8A83/libimobiledevice.xcframework.zip", checksum: "e721eaabb6f600f809cab3d3ff4523a7c792501a0768aa7c4c8ab8358a34b3d3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.86811943-F59C-4F31-849A-51F2E5DE8A83/libimobiledevice_glue.xcframework.zip", checksum: "7d57b5fda35a8e03b2e7861985455b413b658704dcf7ecabe4853086fe154613"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.86811943-F59C-4F31-849A-51F2E5DE8A83/libplist.xcframework.zip", checksum: "6bace0ab60a5dc8cf40ccc84404e87eaffabe5ddd746ee98403c39bb13bc4c13"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.86811943-F59C-4F31-849A-51F2E5DE8A83/libtatsu.xcframework.zip", checksum: "b777ca05e9a4fed9a427d8585bff1dd6557e7896e0413da3134e50a10e3c9dad"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.86811943-F59C-4F31-849A-51F2E5DE8A83/libusbmuxd.xcframework.zip", checksum: "b362c4b52dff341f75b834e7cda4c8ec86927ad5aca8857a841934911f5d1eae"),
    ]
)

