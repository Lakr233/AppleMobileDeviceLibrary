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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BDA4929-D215-4417-9A4A-63927EB9C669/libimobiledevice.xcframework.zip", checksum: "055da80a1d7758219267804a81ff33a29c54abd3f4b45fda3871eea3739d00dc"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BDA4929-D215-4417-9A4A-63927EB9C669/libimobiledevice_glue.xcframework.zip", checksum: "73623c4f12a479f58ad39e9fadb22042780893013091d53de64b72f91162edc9"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BDA4929-D215-4417-9A4A-63927EB9C669/libplist.xcframework.zip", checksum: "89ba72c3c95e03adf65cccc71ce15804cdc59dbdc033d8ebbf7076aedd0896b8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BDA4929-D215-4417-9A4A-63927EB9C669/libtatsu.xcframework.zip", checksum: "fb064477ab5b096e2e364b4d7087fc844f78a5f17c0b791146b82a41397d1768"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BDA4929-D215-4417-9A4A-63927EB9C669/libusbmuxd.xcframework.zip", checksum: "91bfc6665840a2b108c30262f572402f3ec7140bc143b03052f9e26551dcce67"),
    ]
)

