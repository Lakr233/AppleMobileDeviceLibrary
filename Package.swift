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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.460E90C4-425E-4890-B555-C0035A8BEE1E/libimobiledevice.xcframework.zip", checksum: "ef03df77fe52d68731b004c3d876e20fb966ea3969c153a5d1ed1a75a4a3d8b4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.460E90C4-425E-4890-B555-C0035A8BEE1E/libimobiledevice_glue.xcframework.zip", checksum: "9ebf173637b2d29e4ca2f0f1fa74f72c22fac34cbd60f5828aba952fa436f870"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.460E90C4-425E-4890-B555-C0035A8BEE1E/libplist.xcframework.zip", checksum: "7235e55505b0f7f61b2b3680b31b4efe39ee40351732d1a00023b04821ae4b8e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.460E90C4-425E-4890-B555-C0035A8BEE1E/libtatsu.xcframework.zip", checksum: "d4b4ed4249393ad429ff961b4171b4ca8ae8cf4d1ac87a5bb0e7e7f33bf65ac8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.460E90C4-425E-4890-B555-C0035A8BEE1E/libusbmuxd.xcframework.zip", checksum: "88a8972529559a5a5e51f76044cee9d6a2e798adc5f44e8861f2700dd9636c37"),
    ]
)

