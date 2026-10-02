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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.47365AC9-A5A1-45EC-81B9-2B5F01C15D5E/libimobiledevice.xcframework.zip", checksum: "e12f2811a4bc76e5c78d200157a95c1e8980ad5077a365ecf3e6078d20554455"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.47365AC9-A5A1-45EC-81B9-2B5F01C15D5E/libimobiledevice_glue.xcframework.zip", checksum: "0bd4a2c98df6dcdb995205ddeb4d68b196dd6fcd03e649bb14a8ce5d380f84d4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.47365AC9-A5A1-45EC-81B9-2B5F01C15D5E/libplist.xcframework.zip", checksum: "98c0b6a61d307592d76293a05291f249789244b39a2fddfdd3d56165fc59f5d0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.47365AC9-A5A1-45EC-81B9-2B5F01C15D5E/libtatsu.xcframework.zip", checksum: "3ae2bb8b91d97db00a31b0884fb13366c132f8191462d5599066b930b8245f06"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.47365AC9-A5A1-45EC-81B9-2B5F01C15D5E/libusbmuxd.xcframework.zip", checksum: "794210c4054eb21970fcea63de8e0bbf9a91769f215f924078b23c121abfba72"),
    ]
)

