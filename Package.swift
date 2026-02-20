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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AC7B45D4-7C04-48E7-87CC-1C5BD6FC5D86/libimobiledevice.xcframework.zip", checksum: "d18b0b3136fab363aab48ee4bff3035b666595cf3c4c9c7544b9fb7416676bcb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AC7B45D4-7C04-48E7-87CC-1C5BD6FC5D86/libimobiledevice_glue.xcframework.zip", checksum: "7002d281b5962bc6222fdf18d114aeddfa3e60e6160ac672fe0d332f3fff2da0"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AC7B45D4-7C04-48E7-87CC-1C5BD6FC5D86/libplist.xcframework.zip", checksum: "b695ad63c04b9f53e127635fb820927cd6d05ca73c029d37091e66a79f51e7d8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AC7B45D4-7C04-48E7-87CC-1C5BD6FC5D86/libtatsu.xcframework.zip", checksum: "511cf843425936964ca12588583cd65e0cf9153fa0e4f08536c2e395dc0aeba2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AC7B45D4-7C04-48E7-87CC-1C5BD6FC5D86/libusbmuxd.xcframework.zip", checksum: "c601b6b0014240f890c3ef79cecd6b776f86885ee50890990713b312a9ff90a8"),
    ]
)

