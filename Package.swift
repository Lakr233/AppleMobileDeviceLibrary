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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F928058-3689-404D-B321-71F0E1303CF4/libimobiledevice.xcframework.zip", checksum: "2ab58150bf4261e075544631b2c6270ef67f7a75d4e289ac6865360c67170fc2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F928058-3689-404D-B321-71F0E1303CF4/libimobiledevice_glue.xcframework.zip", checksum: "a46d9061db7a9a2e786d726da99f810593e7bdbe72e97f450b4cc0c9c62351c1"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F928058-3689-404D-B321-71F0E1303CF4/libplist.xcframework.zip", checksum: "99e48e6db97304218e6afcd7d4caad173f95bd11f8a9c632f9ae108247911e55"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F928058-3689-404D-B321-71F0E1303CF4/libtatsu.xcframework.zip", checksum: "07365fdaad9f7618d478c7131805c3523a98a7ae778d7263dc912c3047811920"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F928058-3689-404D-B321-71F0E1303CF4/libusbmuxd.xcframework.zip", checksum: "f540931777a779e4efbf5da06963ce1d0ec7397ee23443f4c63e78bb8c8111ca"),
    ]
)

