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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B65142E1-5635-4BCC-AE69-924B3C833341/libimobiledevice.xcframework.zip", checksum: "e2d0cdd512f08ad7c9ef284343be6afb800e4a40a0bd72fba40cbf319a55a4a5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B65142E1-5635-4BCC-AE69-924B3C833341/libimobiledevice_glue.xcframework.zip", checksum: "1514c392e96baf27bcf721248d7608e7a614065493680a3181dbc42e5ddedb19"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B65142E1-5635-4BCC-AE69-924B3C833341/libplist.xcframework.zip", checksum: "dd903149ffc66b7aaf0d6671f5ee0312ea5b03941516cbf831af8ee8be8679f9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B65142E1-5635-4BCC-AE69-924B3C833341/libusbmuxd.xcframework.zip", checksum: "27f403d112b505209a9d9c09dd987ecf129380ad7a0556ecd7f80233d455aab9"),
    ]
)

