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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3B5E2AA1-6281-459C-9A94-443889727FD5/libimobiledevice.xcframework.zip", checksum: "7e30a3e3753ba03608f919e4049b3c39a9a0259f06833431f9855f24a7819e0b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3B5E2AA1-6281-459C-9A94-443889727FD5/libimobiledevice_glue.xcframework.zip", checksum: "631d9637e4e3606d6925ed746ff44042fc841de5d6729d39fe43b3e95503d820"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3B5E2AA1-6281-459C-9A94-443889727FD5/libplist.xcframework.zip", checksum: "161029da495ec235fba7ee9b5f56f2e348ac9562752b35b638799a0836a70ad9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3B5E2AA1-6281-459C-9A94-443889727FD5/libusbmuxd.xcframework.zip", checksum: "836e119c1bf2af078274e0d231e05cdf00d5db685b9e1eaa66f46e476bcd05ff"),
    ]
)

