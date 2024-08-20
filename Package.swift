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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.01813FAD-04C3-41DE-9913-F78F6E2C163B/libimobiledevice.xcframework.zip", checksum: "eeb0fa7dc6a9d485fa83bcd822cac2cb4fa8efaef8e65b3ae0a48429be4bfb08"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.01813FAD-04C3-41DE-9913-F78F6E2C163B/libimobiledevice_glue.xcframework.zip", checksum: "2435e75aefca8814c989744d65f4930e40abd7304b63d297d6b5631697a5002f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.01813FAD-04C3-41DE-9913-F78F6E2C163B/libplist.xcframework.zip", checksum: "014b79f748c413e27cdd9e63673545f99797332d33a77a6695b8f678cec53184"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.01813FAD-04C3-41DE-9913-F78F6E2C163B/libtatsu.xcframework.zip", checksum: "adf4055ab262379823b0150d8b5ccefab0209bb23a4aa2cc46f02ab8f8490b4f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.01813FAD-04C3-41DE-9913-F78F6E2C163B/libusbmuxd.xcframework.zip", checksum: "56ed615dcae9a8e211a50af82af4ff67acd21b2aff0213710322a2fe292825cb"),
    ]
)

