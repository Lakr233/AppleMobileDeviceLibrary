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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CD502937-4907-4CC6-A488-8985CA79ABA7/libimobiledevice.xcframework.zip", checksum: "de34662631aad4b94a34385b1248e4b9e332ef0ae6e725452bf3184afca057bd"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CD502937-4907-4CC6-A488-8985CA79ABA7/libimobiledevice_glue.xcframework.zip", checksum: "9ebb3f011877d6618ba12e163a3fcea3c3b3c88d6aacec748103f7bfe56c45dc"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CD502937-4907-4CC6-A488-8985CA79ABA7/libplist.xcframework.zip", checksum: "57b9b3d4228c4032a85fe91fab0a8929392bc5a2b4bd3c39b7aff32f7aed1db1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CD502937-4907-4CC6-A488-8985CA79ABA7/libtatsu.xcframework.zip", checksum: "9cb5d2ea07499e8efad7f8a877706cdddf55111e8ec71c90815b0f6ff81ed2d5"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CD502937-4907-4CC6-A488-8985CA79ABA7/libusbmuxd.xcframework.zip", checksum: "2eb40ca844e0e43580a11fb2dd11905fd33cb9c892e79d8dd5d7e1574b9cce16"),
    ]
)

