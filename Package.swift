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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.66B4F540-C08B-46A5-8C7F-F7ABAB1885F6/libimobiledevice.xcframework.zip", checksum: "998f2ac8c0307c4d425816a4d297998aeedac0c5542a5ccd3260d0878239599a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.66B4F540-C08B-46A5-8C7F-F7ABAB1885F6/libimobiledevice_glue.xcframework.zip", checksum: "7852ddc4aeb829c090480b9e45ccfa3fa40c0901d5db679802b96430b1dce2ee"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.66B4F540-C08B-46A5-8C7F-F7ABAB1885F6/libplist.xcframework.zip", checksum: "03d9ca813ef1311abfba226178144d4243b5bf1d0fd246f0da2149a5888506f1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.66B4F540-C08B-46A5-8C7F-F7ABAB1885F6/libusbmuxd.xcframework.zip", checksum: "9609eabac24ca841d350abe17c0eae291c193366e9ea2ff50d47ab7d9505b0ce"),
    ]
)

