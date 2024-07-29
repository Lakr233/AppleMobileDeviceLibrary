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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A5C9221E-0FE2-43D2-B8F7-951BBA4DC0D7/libimobiledevice.xcframework.zip", checksum: "741bd1df8754bfd1d4325a0b783245dcdd466364f270ea3e4ed74df873671ec7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A5C9221E-0FE2-43D2-B8F7-951BBA4DC0D7/libimobiledevice_glue.xcframework.zip", checksum: "5bee4caec9b65722f87fbf6f89ee01d6650c118d7e9b1372e468c0f7c93fc654"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A5C9221E-0FE2-43D2-B8F7-951BBA4DC0D7/libplist.xcframework.zip", checksum: "c1fa2baa954b59a3e6c93aba676119c758982a70b51c1a1fb27dc8a11b44a64e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A5C9221E-0FE2-43D2-B8F7-951BBA4DC0D7/libtatsu.xcframework.zip", checksum: "e5e88ce767159cd28ca9339e73d9d1e4dc7f9da4661ac3c9481daaa657af7d64"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A5C9221E-0FE2-43D2-B8F7-951BBA4DC0D7/libusbmuxd.xcframework.zip", checksum: "851ec775c7b3e38e5bea239271b3f626b9d9eec051afa4b7734686356ffdad55"),
    ]
)

