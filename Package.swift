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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1EC5D344-D8E3-4510-9B4D-D299B89954FD/libimobiledevice.xcframework.zip", checksum: "50d342bdaec2ba905a7777c517e313832fef5d4c7fe7fd1ccb6c64dfb029cceb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1EC5D344-D8E3-4510-9B4D-D299B89954FD/libimobiledevice_glue.xcframework.zip", checksum: "019a600e239207431a65da5a8aeb504b17e397c877903aa09fb6eb1648742bb7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1EC5D344-D8E3-4510-9B4D-D299B89954FD/libplist.xcframework.zip", checksum: "f932ed0d3b166e44309cc9ebc58c75131557c610bd8980a47fadca1f965b401c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1EC5D344-D8E3-4510-9B4D-D299B89954FD/libtatsu.xcframework.zip", checksum: "e2a32157cdab00c0c6da6aa29b7f4a062dceaeff6b8e22347a4f27caacc85fc4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1EC5D344-D8E3-4510-9B4D-D299B89954FD/libusbmuxd.xcframework.zip", checksum: "c7bb134131bd06598be3ae49d0d3605846a25ff2449f781720ffd88819f29948"),
    ]
)

