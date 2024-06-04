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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40B817E8-9DD4-466A-97A8-D7EC1A4FAFE0/libimobiledevice.xcframework.zip", checksum: "242225b8fb05b5ef83b87a235141ec7f87211f5215918d31dcfe55dde9c1ce1c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40B817E8-9DD4-466A-97A8-D7EC1A4FAFE0/libimobiledevice_glue.xcframework.zip", checksum: "d961bbe7b77f82deb9f5899dc8d0d3a5f2056dd9048aa7320311d1f7e60e66f6"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40B817E8-9DD4-466A-97A8-D7EC1A4FAFE0/libplist.xcframework.zip", checksum: "2e9e0057dea36aa5e432ea5178e16d5c6a6542d344daf49a690727698e1295ff"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40B817E8-9DD4-466A-97A8-D7EC1A4FAFE0/libusbmuxd.xcframework.zip", checksum: "8c265eda18a3b16176cec73bba881bdd733294ce2e5dd3288a8d22bf20cccaef"),
    ]
)

