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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6EDE6814-05D6-431C-A166-FF8141D8A99B/libimobiledevice.xcframework.zip", checksum: "a67ee290d4c6c9d749fc3cdcbe6c2302bf875824da9eca4d77a567819a6a2e2c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6EDE6814-05D6-431C-A166-FF8141D8A99B/libimobiledevice_glue.xcframework.zip", checksum: "52117c0660fb1043aa860ed76d5ccc6b5dbf22e9ad7da58fe820e4fddce03583"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6EDE6814-05D6-431C-A166-FF8141D8A99B/libplist.xcframework.zip", checksum: "686ef0c1c1652c2b4e1f8904dda18b583438bf21f799c253b91e36395115c7a1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6EDE6814-05D6-431C-A166-FF8141D8A99B/libtatsu.xcframework.zip", checksum: "374ab3250a9cd41245fd8ee43919c501d2a53fe2b3c77eaf11e172c045142c42"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6EDE6814-05D6-431C-A166-FF8141D8A99B/libusbmuxd.xcframework.zip", checksum: "be669269baef79ba0256fe02d318b14c7c6a8a4677aa59e59032b5f2834d1080"),
    ]
)

