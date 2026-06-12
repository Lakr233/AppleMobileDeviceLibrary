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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5E09DBA7-E6D0-404B-9A7A-8109E6F8D8CF/libimobiledevice.xcframework.zip", checksum: "811402d3a57fb2773f9cdf7facf97a931b7fd85aaff1e210d82fe3f31268def3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5E09DBA7-E6D0-404B-9A7A-8109E6F8D8CF/libimobiledevice_glue.xcframework.zip", checksum: "d9fbe87d2fedbdde99e01605be0bad419a68f4ba5ae3b2624eb30e0f41087fd4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5E09DBA7-E6D0-404B-9A7A-8109E6F8D8CF/libplist.xcframework.zip", checksum: "f95d91ab3da3ffb02dc3efed65ffab29d4381b4e1966360f24f8ca8e578a3f39"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5E09DBA7-E6D0-404B-9A7A-8109E6F8D8CF/libtatsu.xcframework.zip", checksum: "8597c680b7c4c216575be7d668ce4936ac8d79d65ff79319419936571ddd8596"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5E09DBA7-E6D0-404B-9A7A-8109E6F8D8CF/libusbmuxd.xcframework.zip", checksum: "9917518753279d2a089299e9c2f2efbd85245f39164d7f3557613dbe5b45d426"),
    ]
)

