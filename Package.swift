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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D582A2A1-3DAC-4CE5-936A-D3360CDD1123/libimobiledevice.xcframework.zip", checksum: "ddca8a771bcd6a034a52144b7b97464e4c3135097832db185842fde42c606922"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D582A2A1-3DAC-4CE5-936A-D3360CDD1123/libimobiledevice_glue.xcframework.zip", checksum: "3eb4ef48645d490a399d1f24a3e62e63892e464f625a494fffe051d0cd2e29a0"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D582A2A1-3DAC-4CE5-936A-D3360CDD1123/libplist.xcframework.zip", checksum: "042f36d82e65a9166288425facb702bdce318fdef6e80f4ed02b0c28d3d784c3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D582A2A1-3DAC-4CE5-936A-D3360CDD1123/libtatsu.xcframework.zip", checksum: "219259d0db2d50584ae552befefac3826d14ea11b294181779a8cc7e00abaf9b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D582A2A1-3DAC-4CE5-936A-D3360CDD1123/libusbmuxd.xcframework.zip", checksum: "de20e3d04f7e0b62329fd42d4251570303a4167db3f1aa84c16e8b5b9558a79e"),
    ]
)

