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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D1953120-41A7-4044-B20A-8E4FE2EDBF57/libimobiledevice.xcframework.zip", checksum: "bdecd62870f477eb5f332da18752cd1c81428c2ab02ba31e0dbe0ac494dae102"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D1953120-41A7-4044-B20A-8E4FE2EDBF57/libimobiledevice_glue.xcframework.zip", checksum: "d38cec8b29d014e3f31da660e26bc09dfe4605bf6b4cbcf5ce9885a1a788c127"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D1953120-41A7-4044-B20A-8E4FE2EDBF57/libplist.xcframework.zip", checksum: "be5c58d884b865688af1cc445601d426845fea9bebb97f16b6e62a81fd79ee9f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D1953120-41A7-4044-B20A-8E4FE2EDBF57/libtatsu.xcframework.zip", checksum: "da37d06d2bcf78cedd345cfa50f93e5d9cb3f99d72afd04aff319fea4de40517"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D1953120-41A7-4044-B20A-8E4FE2EDBF57/libusbmuxd.xcframework.zip", checksum: "d10ea4b8338e799ef44e9a2343af166c891a76162daf3b8d27b562e13bd99424"),
    ]
)

