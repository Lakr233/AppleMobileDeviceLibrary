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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9B8C3D6A-D852-4FB5-BFAD-399A0AE60765/libimobiledevice.xcframework.zip", checksum: "c4b1547a72619c56095ca4a70bb9e1b4cbdf3c3ece7642a0ea2c63c743a87c22"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9B8C3D6A-D852-4FB5-BFAD-399A0AE60765/libimobiledevice_glue.xcframework.zip", checksum: "dff6035695ff0a44f1bba76bfc62c28f938d5f2340cdede9ed1cee3d03e31737"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9B8C3D6A-D852-4FB5-BFAD-399A0AE60765/libplist.xcframework.zip", checksum: "413517f0ff96cb83526a860fece9c115e9826e5d9c455052166ab4df0e5d9923"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9B8C3D6A-D852-4FB5-BFAD-399A0AE60765/libtatsu.xcframework.zip", checksum: "c13a841527ca582e16784402dba0d1a5fcf9aeafbcdc940f0da312469c65ebd2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9B8C3D6A-D852-4FB5-BFAD-399A0AE60765/libusbmuxd.xcframework.zip", checksum: "4bf8a9a9f3fb8de181e04e9c9937b9055120b4a59e791009fc19a89124b5aefe"),
    ]
)

