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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.046560A2-3CD5-4478-8113-184BC9BA3E18/libimobiledevice.xcframework.zip", checksum: "47bebcf31328b89260e153cf98bab2ab74f888be884ce8465fac49b5ce705ed5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.046560A2-3CD5-4478-8113-184BC9BA3E18/libimobiledevice_glue.xcframework.zip", checksum: "fdee27cfeae3e377ade2e19d17f83a513c9456a11bae255c0699c6a99bf3cd68"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.046560A2-3CD5-4478-8113-184BC9BA3E18/libplist.xcframework.zip", checksum: "7ea33fdc2d8a6e433096fadb9488ab6a82884b36ba068bd3ab260f560e14d646"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.046560A2-3CD5-4478-8113-184BC9BA3E18/libtatsu.xcframework.zip", checksum: "38ded63de746895d20a71ddc555405bbd8065f0b80807afe8d88a05aeb2e403d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.046560A2-3CD5-4478-8113-184BC9BA3E18/libusbmuxd.xcframework.zip", checksum: "68fd8bfcd28323f4e53ec375ad936c4a79e9fd3654365b1d7c09e66e93810068"),
    ]
)

