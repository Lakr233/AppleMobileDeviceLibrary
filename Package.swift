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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C867B983-AC3E-458B-84B4-9DDCBF8B8EF3/libimobiledevice.xcframework.zip", checksum: "c43b42dfbf6a0ca8ef1136197a2b7d40dc6510347cb5b7c29f919dc4e7ad33ab"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C867B983-AC3E-458B-84B4-9DDCBF8B8EF3/libimobiledevice_glue.xcframework.zip", checksum: "f491771c5d3e0aaa66f6cbf214d5ddba67fd7fc87a1313811372d87151e096e2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C867B983-AC3E-458B-84B4-9DDCBF8B8EF3/libplist.xcframework.zip", checksum: "6cba7b9c45f1099e89d6f78cab72ce40a15cb2e6ff1cbdafc0d3c9bec1e98b1a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C867B983-AC3E-458B-84B4-9DDCBF8B8EF3/libtatsu.xcframework.zip", checksum: "0c5c0990fe586d35a6b243153f0ce4f4b47662715db39201c683f4fb5b0f3010"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C867B983-AC3E-458B-84B4-9DDCBF8B8EF3/libusbmuxd.xcframework.zip", checksum: "eab52705b9fe795cb56e7303fc75021240d8f1281f708d4539c8c74ab1c6f878"),
    ]
)

