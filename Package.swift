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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.059C9943-19DC-4330-979E-F13FFF664CFE/libimobiledevice.xcframework.zip", checksum: "f439d00c004544d8d3d6bef958fcd13e1b6b0682eed3dbc19c4763206ca52762"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.059C9943-19DC-4330-979E-F13FFF664CFE/libimobiledevice_glue.xcframework.zip", checksum: "6213d4980361f7a3f3bc4bfa6e68a8998c7ea75be4a36477be2b79eaea26f058"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.059C9943-19DC-4330-979E-F13FFF664CFE/libplist.xcframework.zip", checksum: "a3d647b09bddea7ac327573285818d5bf7bab3876f7c60c233f5e88d629d148c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.059C9943-19DC-4330-979E-F13FFF664CFE/libtatsu.xcframework.zip", checksum: "8938d425d6b7e6b1eaca0e68ec032953b479f36f209e562d683b0048a7b650cd"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.059C9943-19DC-4330-979E-F13FFF664CFE/libusbmuxd.xcframework.zip", checksum: "6fee155ad625890840d0195e4f9c5292d82d478e39f6a2bf21ecdfaf4e78863d"),
    ]
)

