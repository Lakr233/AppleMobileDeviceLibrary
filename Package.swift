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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.347FCC92-99FA-45DB-9DDF-C1D6CB1F0387/libimobiledevice.xcframework.zip", checksum: "2db50e08762c5bdf9408528b2f74a6898fe8918e19dc17e0987f93d26a884536"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.347FCC92-99FA-45DB-9DDF-C1D6CB1F0387/libimobiledevice_glue.xcframework.zip", checksum: "b4ff92dc8febbb7f0e77d4efcffbed0aea9704f63f41acc6a198d701e6f1e6a4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.347FCC92-99FA-45DB-9DDF-C1D6CB1F0387/libplist.xcframework.zip", checksum: "9f1a1a5368d48d308eb461fe60e45a3b129a907b6e91f537017b4903a958caf8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.347FCC92-99FA-45DB-9DDF-C1D6CB1F0387/libtatsu.xcframework.zip", checksum: "e354e930ccb837d76733e35c6e5ae728eb12ccbcfb888f87722f54ee8c3ddf24"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.347FCC92-99FA-45DB-9DDF-C1D6CB1F0387/libusbmuxd.xcframework.zip", checksum: "4b58e53155461f573ad44b3d09ea3e214d5ae581aeeeafafb488c71ac591f88a"),
    ]
)

