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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F2846FD-4729-4082-80C4-4ED59ABA6AA9/libimobiledevice.xcframework.zip", checksum: "533ed6fbe4cc23edfde675fbad92f53c0c897893a47ea7b2c9e99643f688d11e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F2846FD-4729-4082-80C4-4ED59ABA6AA9/libimobiledevice_glue.xcframework.zip", checksum: "ec10e79b30bf4c33a901e3e0fe08af476a8dc96e8cf2830ffce083f04bff14b0"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F2846FD-4729-4082-80C4-4ED59ABA6AA9/libplist.xcframework.zip", checksum: "2449ad588eae6534327996e93b29d0564363ff943a14812b3fb1510f978a4faa"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F2846FD-4729-4082-80C4-4ED59ABA6AA9/libtatsu.xcframework.zip", checksum: "fd90b9fc1701d57e4a321b1012d6a4f6c10d2e66c5206109c32c68252c0113c6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F2846FD-4729-4082-80C4-4ED59ABA6AA9/libusbmuxd.xcframework.zip", checksum: "6a3d55363afc6c3b177ac2ccd757dcf1f91010571d77d89a1696de0b5dc9fc9f"),
    ]
)

