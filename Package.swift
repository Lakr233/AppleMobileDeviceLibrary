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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.812BA0EF-545A-4854-80C1-F711C4142CFF/libimobiledevice.xcframework.zip", checksum: "0a2cbdabfb1952b9fa614c44b1db72941d2897886a12bff4f74dd7c1c6f4de53"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.812BA0EF-545A-4854-80C1-F711C4142CFF/libimobiledevice_glue.xcframework.zip", checksum: "0b66ada24f20f49ff8786aadbc67037dae2c91e882a31095769954627d9dc1f4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.812BA0EF-545A-4854-80C1-F711C4142CFF/libplist.xcframework.zip", checksum: "a3045640d90551613ca4af00e582138e95ce385bb21a8cb034d5879009af0d31"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.812BA0EF-545A-4854-80C1-F711C4142CFF/libtatsu.xcframework.zip", checksum: "1cf0b7e64550de02293b7ad8968224623b6c84717e2a01b53fc5fd2bb382a155"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.812BA0EF-545A-4854-80C1-F711C4142CFF/libusbmuxd.xcframework.zip", checksum: "05d2d54ed63a5992a57c873b264ffc45b8c0b0a96c440769faef272023b60964"),
    ]
)

