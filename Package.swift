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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.46A6477C-63BC-448A-8EB1-D7A06EC9407D/libimobiledevice.xcframework.zip", checksum: "0c321521e60f22fad4ce0bf696905163e5f4e81d8bd430ac1df269173f6cde26"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.46A6477C-63BC-448A-8EB1-D7A06EC9407D/libimobiledevice_glue.xcframework.zip", checksum: "de7aa1fecc2dca79769e79ab5f1409e3aaf962cccddddfa15641acd333c45405"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.46A6477C-63BC-448A-8EB1-D7A06EC9407D/libplist.xcframework.zip", checksum: "56fa88f3bd1f847ab8f4053728f93c099ee78032d8cf5b4c38c210a270b22125"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.46A6477C-63BC-448A-8EB1-D7A06EC9407D/libtatsu.xcframework.zip", checksum: "1459bedc1c9b5f203d5932efc61d023bf8d547928041025d3beab72a2073ad15"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.46A6477C-63BC-448A-8EB1-D7A06EC9407D/libusbmuxd.xcframework.zip", checksum: "8e4cdd0c30b081d822444118b5ec0c1a452d65f838a1da67d3379f59e3a811d7"),
    ]
)

