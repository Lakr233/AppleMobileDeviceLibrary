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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0DBA172F-D4B5-4DE5-8BAC-E785F10CB403/libimobiledevice.xcframework.zip", checksum: "29e9f331bc6a7280aa6418bb45b387e6b4e38866faff7c7b5f5fafd13bb349d7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0DBA172F-D4B5-4DE5-8BAC-E785F10CB403/libimobiledevice_glue.xcframework.zip", checksum: "54d754451908e94b2f3bb6765c7cd54ffc04a96865f95b095556bca1aaf51f1e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0DBA172F-D4B5-4DE5-8BAC-E785F10CB403/libplist.xcframework.zip", checksum: "5bdd3c72e5ecbfb1e17627b8e265064d098c713bce492fe36ee1986f7c0e6704"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0DBA172F-D4B5-4DE5-8BAC-E785F10CB403/libtatsu.xcframework.zip", checksum: "06c46a813d4ea7af3b78bd3fead3e6dbafc37a0138b384c94ee5b58bf8ad32b5"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0DBA172F-D4B5-4DE5-8BAC-E785F10CB403/libusbmuxd.xcframework.zip", checksum: "6df65f892df8dd7128c6e74798c50ef81ffbf465463db54b699bcac093eef06d"),
    ]
)

