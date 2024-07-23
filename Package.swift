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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F3D144F9-D364-428C-A450-3B8DA060A03F/libimobiledevice.xcframework.zip", checksum: "018ced894d648b2c44fc5567269d708becb98ba0288abdbdb85123ee1c4479f4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F3D144F9-D364-428C-A450-3B8DA060A03F/libimobiledevice_glue.xcframework.zip", checksum: "47ab65b6f61b75321903de57c65745b4eeeec00ff8b09844dde25e7198fce733"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F3D144F9-D364-428C-A450-3B8DA060A03F/libplist.xcframework.zip", checksum: "7dc3a624308c7f8d66b93f97f9e8b14ff9fba740f68ad55fba3e46ac567b83e3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F3D144F9-D364-428C-A450-3B8DA060A03F/libtatsu.xcframework.zip", checksum: "c9f038f4e66925f1520ed9275674a6fa915501550428a5caa542d794582b7c81"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F3D144F9-D364-428C-A450-3B8DA060A03F/libusbmuxd.xcframework.zip", checksum: "d03c2fab9a527b0f63acbb3ff7997c1025115fe330bc2541317193252e789563"),
    ]
)

