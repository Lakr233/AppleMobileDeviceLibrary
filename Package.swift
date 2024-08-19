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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.19DF4492-0BE4-43BD-8343-B5E59C024DCC/libimobiledevice.xcframework.zip", checksum: "5d3f14d2d82530113b3e5b9c331e7b296e84a48255bc6ba3b929d3dcb98a46aa"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.19DF4492-0BE4-43BD-8343-B5E59C024DCC/libimobiledevice_glue.xcframework.zip", checksum: "0b1b5b22c2dcf2b6d71a631ef8e89a0a6938f6caa1b8e62a2e7321340fd6dea1"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.19DF4492-0BE4-43BD-8343-B5E59C024DCC/libplist.xcframework.zip", checksum: "7fe7964eac780e54bcf9b6041d341ec14a5c3005a1496e559d0b3dedacdaee0e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.19DF4492-0BE4-43BD-8343-B5E59C024DCC/libtatsu.xcframework.zip", checksum: "68406ce2c89b42d08debdcceb81e6eba3aec0f905ecaa4fbededf7a3ffad8124"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.19DF4492-0BE4-43BD-8343-B5E59C024DCC/libusbmuxd.xcframework.zip", checksum: "0b2041d5d664b3c9633bd24c839f1fb707f7cbbec136a82c84f2140ea70812dd"),
    ]
)

