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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D75F741-8E97-4E4D-A7B5-336710CC5DAB/libimobiledevice.xcframework.zip", checksum: "84b600cd53937d41b64246569bd4a56f96a793d78b1685544841d0ee0e0a66bb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D75F741-8E97-4E4D-A7B5-336710CC5DAB/libimobiledevice_glue.xcframework.zip", checksum: "69282d6c727aa6f7f03b917bccbdd2de28fcfc3f96ba23c2915d275e14e8fa98"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D75F741-8E97-4E4D-A7B5-336710CC5DAB/libplist.xcframework.zip", checksum: "076d2affbf843a5350d01bc43be9049fcb41ad827aa866b177aec64497e01268"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D75F741-8E97-4E4D-A7B5-336710CC5DAB/libtatsu.xcframework.zip", checksum: "c61cb4c5c6483d23b9ca0a558a3eb8559b4df0d47c5912a65d2ee45ee51e9bae"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D75F741-8E97-4E4D-A7B5-336710CC5DAB/libusbmuxd.xcframework.zip", checksum: "2268ea7b769b9b4881f420007b65907932e4d76ba3a0e832bf90354c10c7bba0"),
    ]
)

