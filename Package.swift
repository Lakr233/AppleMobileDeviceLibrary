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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E0608851-2C6E-44F2-9E1B-35A6104E6B8F/libimobiledevice.xcframework.zip", checksum: "0c566611823606e7cdf5299b73e87660ebc2f88ffd430c8e89273deb90d9054d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E0608851-2C6E-44F2-9E1B-35A6104E6B8F/libimobiledevice_glue.xcframework.zip", checksum: "0fd59d08e1b483c92f1258b89a2ab5f6a04123e31633d98e84b637e15ddb368d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E0608851-2C6E-44F2-9E1B-35A6104E6B8F/libplist.xcframework.zip", checksum: "80b0f75e0b6b40e723b9b8326888549a82dc9997fd39cb074dec5e5cd1b4f99d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E0608851-2C6E-44F2-9E1B-35A6104E6B8F/libtatsu.xcframework.zip", checksum: "16155a249069b83e692b53fbd4e4507de482794462612b8f8e2a8e2653872d6f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E0608851-2C6E-44F2-9E1B-35A6104E6B8F/libusbmuxd.xcframework.zip", checksum: "e83720a7598b05fb4faaa2f2fba1355aa619946b430438f612cac53af5d02a32"),
    ]
)

