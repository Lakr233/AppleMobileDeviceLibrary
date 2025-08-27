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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CBDEC27A-07EA-4201-AEDC-6328C7F605E4/libimobiledevice.xcframework.zip", checksum: "cc575032db3995790d2636a644586d157a80991ef73cc62150c5b467c8323f77"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CBDEC27A-07EA-4201-AEDC-6328C7F605E4/libimobiledevice_glue.xcframework.zip", checksum: "8b776b1f019fc40df5cf5978af8a76537e5783ad7ca60922fc2b730c3e9c512a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CBDEC27A-07EA-4201-AEDC-6328C7F605E4/libplist.xcframework.zip", checksum: "0e16bef9ddd6207e35e700a3aa59e05025761934ebe914b3eedafc73540fe1ad"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CBDEC27A-07EA-4201-AEDC-6328C7F605E4/libtatsu.xcframework.zip", checksum: "8211d7b6c69bf3a36a87560f6daecf062e370b13e8095df433f96398682473ab"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.CBDEC27A-07EA-4201-AEDC-6328C7F605E4/libusbmuxd.xcframework.zip", checksum: "21c421c984f8cf57a5d4fc31c0164ab2ee9ee113ff8c42df0505cec0052abfd1"),
    ]
)

