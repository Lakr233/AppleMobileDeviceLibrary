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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6A383A4C-F0FD-4273-9417-CA78FF1B57E1/libimobiledevice.xcframework.zip", checksum: "b0091a6c277e29dba757e8c1ab454d81956a17bc58b5a2e64f730d46d0136f62"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6A383A4C-F0FD-4273-9417-CA78FF1B57E1/libimobiledevice_glue.xcframework.zip", checksum: "9a904963b5bccc8bc0c3479b32a096456121f73e11f6d8559196f219491a2896"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6A383A4C-F0FD-4273-9417-CA78FF1B57E1/libplist.xcframework.zip", checksum: "42247b59abbfd34205904d4c4d952449a22ec7967071988196dd0853e64425b0"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6A383A4C-F0FD-4273-9417-CA78FF1B57E1/libusbmuxd.xcframework.zip", checksum: "8c3cd5377b7939d2e47973fdb46c1c8735b51ba7ad35b24a76488ae06828aaee"),
    ]
)

