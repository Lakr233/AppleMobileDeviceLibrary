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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A54A4DE1-FC7B-40A5-BA2F-38E93032A381/libimobiledevice.xcframework.zip", checksum: "facb991e24d48b43d5da4ecfd936e0ccd2aecf51f91e59dd1bf38af78fc786f1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A54A4DE1-FC7B-40A5-BA2F-38E93032A381/libimobiledevice_glue.xcframework.zip", checksum: "9ad869216c56685641364814110efe2c8cb2f08e63a333a75dc5ad014dcc2318"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A54A4DE1-FC7B-40A5-BA2F-38E93032A381/libplist.xcframework.zip", checksum: "9fdd8d8f3864f5599894ae78b2490e775f4aa870bda97213ad84c114b69e5527"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A54A4DE1-FC7B-40A5-BA2F-38E93032A381/libtatsu.xcframework.zip", checksum: "0df143587f491f4229bf19182d22d88e7d9c1b5ee247318000616c59ba654e2c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A54A4DE1-FC7B-40A5-BA2F-38E93032A381/libusbmuxd.xcframework.zip", checksum: "bc6a698775175307396e4c364c2f970c185bf977a1745d84c34f0e5ecb979335"),
    ]
)

