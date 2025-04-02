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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0987DD66-F7DB-4D45-B9E9-8527A0161FBD/libimobiledevice.xcframework.zip", checksum: "7e92259cdeab973d6a1b17579449925cea52ee6bf231c54294e14c52f669f109"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0987DD66-F7DB-4D45-B9E9-8527A0161FBD/libimobiledevice_glue.xcframework.zip", checksum: "71e2da136d46847341f00a5e96a7dac8686a854b7c00f2b6a26cc0c46de8db0a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0987DD66-F7DB-4D45-B9E9-8527A0161FBD/libplist.xcframework.zip", checksum: "236b9d9099c7449ee9729e427740c6849db0a8f9e436c18c8d3b5dbc78f5dbab"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0987DD66-F7DB-4D45-B9E9-8527A0161FBD/libtatsu.xcframework.zip", checksum: "8a2cd4c2ecfaa3224133dffd0a3f763833324ccfdeb5715d7fa09eb1036ec8bb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0987DD66-F7DB-4D45-B9E9-8527A0161FBD/libusbmuxd.xcframework.zip", checksum: "52a1a26f942424578b3fb58874d88a16f52f08e2d1a1a4db2587d92b281e3ea0"),
    ]
)

