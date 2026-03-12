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
        .library(
            name: "libimobiledevice",
            targets: ["libimobiledevice"]
        ),
        .library(
            name: "libimobiledevice_glue",
            targets: ["libimobiledevice_glue"]
        ),
        .library(
            name: "libirecovery",
            targets: ["libirecovery"]
        ),
        .library(
            name: "libplist",
            targets: ["libplist"]
        ),
        .library(
            name: "libtatsu",
            targets: ["libtatsu"]
        ),
        .library(
            name: "libusbmuxd",
            targets: ["libusbmuxd"]
        ),
    ],
    dependencies: [
        .package(name: "OpenSSL", url: "https://github.com/Lakr233/openssl-spm.git", from: "3.2.0"),
    ],
    targets: [
        .target(name: "AppleMobileDeviceLibrary", dependencies: [
            "libimobiledevice",
            "libimobiledevice_glue",
            "libirecovery",
            "libplist",
            "libusbmuxd",
            "libtatsu",
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C28A3187-0AD3-4615-8A90-570F574E00AA/libimobiledevice.xcframework.zip", checksum: "c418a5bbfb3676174cb833db444d06af20c082c38dbbbc5248208a0893d1e12a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C28A3187-0AD3-4615-8A90-570F574E00AA/libimobiledevice_glue.xcframework.zip", checksum: "47308fb04c63efcd80cbf7d251055d00cd7c073a2dd325f602c7e95ca4cf7df8"),
        .binaryTarget(name: "libirecovery", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C28A3187-0AD3-4615-8A90-570F574E00AA/libirecovery.xcframework.zip", checksum: "3bde6c053d3640b378d3537a36ccc12b80554b6bbf5659372439bf4e88c19e91"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C28A3187-0AD3-4615-8A90-570F574E00AA/libplist.xcframework.zip", checksum: "3f695b754586169013981e159c9d71bac92c661859d391fdb1583469db7ad61d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C28A3187-0AD3-4615-8A90-570F574E00AA/libtatsu.xcframework.zip", checksum: "cc1469c9bb2957a59f69496ee45c6cc1263eef5c81cd738bc7532a28f107087b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C28A3187-0AD3-4615-8A90-570F574E00AA/libusbmuxd.xcframework.zip", checksum: "9a30797b8c49714c69abc04b5c61901b9530a4c238b5c4a790813461378e13ac"),
    ]
)
