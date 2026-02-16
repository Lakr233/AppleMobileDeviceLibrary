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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.862A200F-9439-4C05-B048-C48B2CEF3BA7/libimobiledevice.xcframework.zip", checksum: "2fd1421429ed7475c4807328df617b9976fe3be0935d86447f54d0bb7035ea73"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.862A200F-9439-4C05-B048-C48B2CEF3BA7/libimobiledevice_glue.xcframework.zip", checksum: "0b39e370e1338200deaeb55f56af817a6448052c8e617b74827fef87eb1f1a58"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.862A200F-9439-4C05-B048-C48B2CEF3BA7/libplist.xcframework.zip", checksum: "9c9e80dc8d4c47802f53ad04af2924ef7a4e1830fadd54aaad36537be95c5c34"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.862A200F-9439-4C05-B048-C48B2CEF3BA7/libtatsu.xcframework.zip", checksum: "31cdfe87128a779b1157141cdb4b771b96dc9e7697d2f2bf6dd7fc3270743a0b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.862A200F-9439-4C05-B048-C48B2CEF3BA7/libusbmuxd.xcframework.zip", checksum: "179b43eb8db65b7431fa483d575be3288b803b759eb595072d594cc7033d4a3f"),
    ]
)

