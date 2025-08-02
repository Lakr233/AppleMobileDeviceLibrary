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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.475AD31D-336D-41B1-A060-CB7428FD0074/libimobiledevice.xcframework.zip", checksum: "f2389fa219e276e05d417f45045d7517972e2bc8b2072d9f4bf2028a324f9089"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.475AD31D-336D-41B1-A060-CB7428FD0074/libimobiledevice_glue.xcframework.zip", checksum: "8e01198aaf6e61c59324882273a3d78cf27c0d6826612073f827b841d860d8f2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.475AD31D-336D-41B1-A060-CB7428FD0074/libplist.xcframework.zip", checksum: "18aa1f6493163298ad6f24a309bb025624a8bfb6402fdba5915067aee999976a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.475AD31D-336D-41B1-A060-CB7428FD0074/libtatsu.xcframework.zip", checksum: "104c92aef087ce64e2ff8420b9c89a4a261f4ac50b0f9fda5380f735bc127913"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.475AD31D-336D-41B1-A060-CB7428FD0074/libusbmuxd.xcframework.zip", checksum: "f2368b131b24e72b82022c3051fbaa08dd7b0efcc407cee23433285af75fed4d"),
    ]
)

