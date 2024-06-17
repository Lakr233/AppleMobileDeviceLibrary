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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0F7EF0FE-AF75-429E-9078-D238CFEFEA04/libimobiledevice.xcframework.zip", checksum: "e167bec5b96f31415ba088d65c0bc0067b9a756db37b967f7bb75b55aa145468"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0F7EF0FE-AF75-429E-9078-D238CFEFEA04/libimobiledevice_glue.xcframework.zip", checksum: "97e26141791a2d4d283eee0efd6caa61d707efdaf7ec145ed68135133817c1f4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0F7EF0FE-AF75-429E-9078-D238CFEFEA04/libplist.xcframework.zip", checksum: "cb13f45f3de5f99c962542a885a0b8ac85aae525dc70c13cbf01eec36cb95f87"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0F7EF0FE-AF75-429E-9078-D238CFEFEA04/libusbmuxd.xcframework.zip", checksum: "a25bf0bc7fac6be5d699f99feb9cc7d8249d486c2c2b5e9f47211a442895f7ee"),
    ]
)

