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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EFD771C9-9785-4EB2-9DFF-FAB75D3E8A2A/libimobiledevice.xcframework.zip", checksum: "f801287aa63defbfcea750e451f2b4b04c3396cc51811f844faef58a28389761"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EFD771C9-9785-4EB2-9DFF-FAB75D3E8A2A/libimobiledevice_glue.xcframework.zip", checksum: "044a4c159d8cb2a336255c948e0dd50f5f5fd5dec488e9bcd7d9a22d296acbad"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EFD771C9-9785-4EB2-9DFF-FAB75D3E8A2A/libplist.xcframework.zip", checksum: "6c290331b05512e3be38963909dba6bcdbfcaa4efd178feb429dc350f5d354cb"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EFD771C9-9785-4EB2-9DFF-FAB75D3E8A2A/libtatsu.xcframework.zip", checksum: "612106b380092139130c14214349e10e6c97aeb305d6254acfdfe276f7836664"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EFD771C9-9785-4EB2-9DFF-FAB75D3E8A2A/libusbmuxd.xcframework.zip", checksum: "5d2eecdeb121a8dc519d2e430d4397e9b5a05570e3cb0772ca82ec034cbb105d"),
    ]
)

