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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F75C024E-7206-408F-BC4C-45055836E1F6/libimobiledevice.xcframework.zip", checksum: "8bbf6928d3dc0a7340fb39f5d15ed6d98c5ff78e668d1cbf2e7256da3a748864"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F75C024E-7206-408F-BC4C-45055836E1F6/libimobiledevice_glue.xcframework.zip", checksum: "c4f72ef47f1a05b598bf3278e4b5039bcea20f43ca3d37ab00608d36d41c6f3b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F75C024E-7206-408F-BC4C-45055836E1F6/libplist.xcframework.zip", checksum: "ef34e2e2f517785a3952f960891eea76cf121a62f4b558f816da39b68aa9607c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F75C024E-7206-408F-BC4C-45055836E1F6/libtatsu.xcframework.zip", checksum: "c636782a4815714824e1f8f4d6a1fd0d20484d016679a0df76b6647ea6b90b92"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F75C024E-7206-408F-BC4C-45055836E1F6/libusbmuxd.xcframework.zip", checksum: "011659258b1e3cb5e4c583794a2c5de3b7f20c4b9299cdd0c0731c3d6cb0e304"),
    ]
)

