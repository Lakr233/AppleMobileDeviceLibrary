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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61E2B777-3051-470F-9BC4-05AED3164D93/libimobiledevice.xcframework.zip", checksum: "3c05159e3cc0ed8c31032612fd199a85004458472af369d6b47a883531e32176"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61E2B777-3051-470F-9BC4-05AED3164D93/libimobiledevice_glue.xcframework.zip", checksum: "92f75ecd1bb516ccd916ceffd7520fc8dcb93299f3ad131558ed0338306f78c6"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61E2B777-3051-470F-9BC4-05AED3164D93/libplist.xcframework.zip", checksum: "a2ae8cfdc7bfe6b8d6c6ad1e492fa136170498c0733fec70f239cd87846208ca"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61E2B777-3051-470F-9BC4-05AED3164D93/libtatsu.xcframework.zip", checksum: "3d75105c9f7e7fcbf5ae5e5173b940a0d38f9386886fabb20f5a694027d8189f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61E2B777-3051-470F-9BC4-05AED3164D93/libusbmuxd.xcframework.zip", checksum: "3286c0cb44a72cab1cf5a0f7b1e8c7be0ca5865999a99a7cb92db021dc9f804f"),
    ]
)

