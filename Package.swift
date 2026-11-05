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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.21FE1FB4-EC8C-42E8-994B-ECDDD0AED664/libimobiledevice.xcframework.zip", checksum: "762d3329c08656dc8f003f6241ed178d0a3625e5252b930e3eaf6cbf7958ec57"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.21FE1FB4-EC8C-42E8-994B-ECDDD0AED664/libimobiledevice_glue.xcframework.zip", checksum: "7e0dfad17f2478eafcd45c1ea93bad00ca4ff71364256f97df1f1a923a3c07fe"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.21FE1FB4-EC8C-42E8-994B-ECDDD0AED664/libplist.xcframework.zip", checksum: "d4404bc931d4f4138e139c51438bdaebda87d3432d40748894f58e1227b0e27c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.21FE1FB4-EC8C-42E8-994B-ECDDD0AED664/libtatsu.xcframework.zip", checksum: "fa27f97fecba268639f2f4851aa63eee3e993671fa7a83ccf4f3ea5ef56e6282"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.21FE1FB4-EC8C-42E8-994B-ECDDD0AED664/libusbmuxd.xcframework.zip", checksum: "decd8a6d9c339ed4a15933c60af197fb951b6de46702ed0924b68f424d9edef7"),
    ]
)

