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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.022DB6BB-03C0-445E-9923-FAC4246F9238/libimobiledevice.xcframework.zip", checksum: "e8b17a396e1faa83af8bb36fa3eaa3a05f5d38eb4109ff38251b24e3d728c396"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.022DB6BB-03C0-445E-9923-FAC4246F9238/libimobiledevice_glue.xcframework.zip", checksum: "f492bf89124375bd252f27e83fb857770ae868462da0d05a6b6b898e42cbac0b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.022DB6BB-03C0-445E-9923-FAC4246F9238/libplist.xcframework.zip", checksum: "b25e3afb7123c534589cff88515790d6fe79f9b8b8e24b3504f02a2044fedab6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.022DB6BB-03C0-445E-9923-FAC4246F9238/libusbmuxd.xcframework.zip", checksum: "9f329b5d2973d59f57d1755f4f7258f3dec4ad6a3186a563a468e20d02e5eba0"),
    ]
)

