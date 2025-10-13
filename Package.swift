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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F62896A8-DE0A-4A9F-86D1-15CD5C87D8A6/libimobiledevice.xcframework.zip", checksum: "9185e04a61859c717d053a243f4c0be00d19acfc3341fb387835fcad4f92621e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F62896A8-DE0A-4A9F-86D1-15CD5C87D8A6/libimobiledevice_glue.xcframework.zip", checksum: "b21a389372af116ea8593592d8f162fa92b7ce69e32bb371427964e637f30e50"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F62896A8-DE0A-4A9F-86D1-15CD5C87D8A6/libplist.xcframework.zip", checksum: "ff96100fbc4888ecc0304483f49dad868b943b013ababbdea72634e7897d444c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F62896A8-DE0A-4A9F-86D1-15CD5C87D8A6/libtatsu.xcframework.zip", checksum: "0bfd4ee4f588d9db073c18685ca36a703cd9beaa60e21874935e4dbfc10a89a6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F62896A8-DE0A-4A9F-86D1-15CD5C87D8A6/libusbmuxd.xcframework.zip", checksum: "d0530f3cf3b0edad79e5769b7b3f50c2cf94b3f56a2ab228eef09dfb88170f7a"),
    ]
)

