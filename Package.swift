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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B70E95EE-D096-46B5-9D32-9336BBBFB1E9/libimobiledevice.xcframework.zip", checksum: "e9a430a24e72a88cf107424007565add22ada7dc4e877d1a90184ae58f16eb6a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B70E95EE-D096-46B5-9D32-9336BBBFB1E9/libimobiledevice_glue.xcframework.zip", checksum: "5f33990c7e82bcd2f65e7ae3394e877b643d33808e3307aaffdcf1fadc0df19a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B70E95EE-D096-46B5-9D32-9336BBBFB1E9/libplist.xcframework.zip", checksum: "c66b7c24a2364bb1f8fb2f3311663e8d6eee79316ac10d29e4073d898e5a351a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B70E95EE-D096-46B5-9D32-9336BBBFB1E9/libtatsu.xcframework.zip", checksum: "d58d56f7ad150ad74d2b0a082e58b9ff937e2609a4cd51c303862e8d19665b49"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B70E95EE-D096-46B5-9D32-9336BBBFB1E9/libusbmuxd.xcframework.zip", checksum: "3838b33a8a43c8640c9f289ca32332cb2e307128e1ffa2b90a3e4562a32f4115"),
    ]
)

