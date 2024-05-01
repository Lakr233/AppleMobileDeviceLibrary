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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F51ED2A4-2B38-46CA-84F6-3753D6DCAC41/libimobiledevice.xcframework.zip", checksum: "2760f9d38ac56d5bb4b16d855317d366b25ad5c818176fd26981f9d3ecc890b1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F51ED2A4-2B38-46CA-84F6-3753D6DCAC41/libimobiledevice_glue.xcframework.zip", checksum: "00675b39a398c3dfbc9e1ba031a4593c990774a930bc1676b623a458351c773b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F51ED2A4-2B38-46CA-84F6-3753D6DCAC41/libplist.xcframework.zip", checksum: "fc5ad5133de70a19d9b2f6f5739e7f2d16e3815e611291cdb35546a5fdc57969"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F51ED2A4-2B38-46CA-84F6-3753D6DCAC41/libusbmuxd.xcframework.zip", checksum: "43384208eba019a93e55437446a35299f0806830663f2054bee08a32158be712"),
    ]
)

