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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4AC00A3C-021C-4FEF-82A8-6CC41BCB7FF3/libimobiledevice.xcframework.zip", checksum: "2b1c9213dd3a5bdf0bd12e8a5e7fa3f0b28089082d5bfe2986529e4d8aa50892"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4AC00A3C-021C-4FEF-82A8-6CC41BCB7FF3/libimobiledevice_glue.xcframework.zip", checksum: "89737b0e10199677fe7697fa1a58d93fa3cb938634509a3a027c414dc968a04b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4AC00A3C-021C-4FEF-82A8-6CC41BCB7FF3/libplist.xcframework.zip", checksum: "1725b7d3318ef2b12e1e3b43112f6a955a55ffec7cb8870ceb08ba6bdca61850"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4AC00A3C-021C-4FEF-82A8-6CC41BCB7FF3/libusbmuxd.xcframework.zip", checksum: "8f12e16a3c2c4732502a1951762208485ad894322eb448a4214f082fa685f2ba"),
    ]
)

