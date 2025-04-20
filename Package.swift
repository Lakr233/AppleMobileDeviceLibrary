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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F4447CFA-6C12-4280-8231-65803949CF84/libimobiledevice.xcframework.zip", checksum: "a90f81ad751f7fc37bb5deb4ff1854926118b271a6912fbe632381c687c7bf73"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F4447CFA-6C12-4280-8231-65803949CF84/libimobiledevice_glue.xcframework.zip", checksum: "e5e546816e74e0d8f43108c9e60d28938870ab6dfe1b1cdb3ec7e89cfae74626"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F4447CFA-6C12-4280-8231-65803949CF84/libplist.xcframework.zip", checksum: "aaeceb9ce471570562ef568457151bd68b153f948e98c47e7f0b1dbdace90aab"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F4447CFA-6C12-4280-8231-65803949CF84/libtatsu.xcframework.zip", checksum: "0554ebf72505ce4991c740b3d532b6054a625a3320928ed436c735691c452f54"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F4447CFA-6C12-4280-8231-65803949CF84/libusbmuxd.xcframework.zip", checksum: "a22177f76ef3d0d7b4bb1918784904509de958063cabe09de41bf7ff0dd040e4"),
    ]
)

