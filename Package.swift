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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.37CDBB44-DD9C-4BC0-BC30-8D76633D8BD3/libimobiledevice.xcframework.zip", checksum: "ed3921c04f285a6c8f2d07b07c32f7e1353dcd605e8528b69741b6a54974e1f7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.37CDBB44-DD9C-4BC0-BC30-8D76633D8BD3/libimobiledevice_glue.xcframework.zip", checksum: "6a41fdf4bba9f30295226d41b2265ccdd34b3ea3fd4a0579dc04dce84f06ab85"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.37CDBB44-DD9C-4BC0-BC30-8D76633D8BD3/libplist.xcframework.zip", checksum: "00607e9ee3985af7d3bc6b400919b78f2c71ce53d6efcebb0c892dc9ed6fc344"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.37CDBB44-DD9C-4BC0-BC30-8D76633D8BD3/libtatsu.xcframework.zip", checksum: "04659d488d2ddbf544ad8b19d4dec525f25d7ef14486c0ab0178bb8056592d42"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.37CDBB44-DD9C-4BC0-BC30-8D76633D8BD3/libusbmuxd.xcframework.zip", checksum: "01f06d93bdbdf35ed5337220ed47cc9a6f776bd4e0a00358ff39e3797f86e0bb"),
    ]
)

