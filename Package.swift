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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FAC54435-7ED6-407D-BC76-00384C1295C0/libimobiledevice.xcframework.zip", checksum: "99e45c74bff65b5c1ab83a586d35cbf9297c996bb5fc71a5d23a257d7314173c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FAC54435-7ED6-407D-BC76-00384C1295C0/libimobiledevice_glue.xcframework.zip", checksum: "e85de9ef89255b151fbab5f8072b5205b4bc1f6b066663079d83ac3244431ab1"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FAC54435-7ED6-407D-BC76-00384C1295C0/libplist.xcframework.zip", checksum: "2b3865ac9317dd4c44cdc205fe907f6712e294a779f05863f491b9074d2252d4"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FAC54435-7ED6-407D-BC76-00384C1295C0/libtatsu.xcframework.zip", checksum: "d157cb188c0793d7deb4bb1f8b711c1c00054117e6f415610200ae392f49349d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FAC54435-7ED6-407D-BC76-00384C1295C0/libusbmuxd.xcframework.zip", checksum: "570c37acb885424b882a42d194b8e04b1bee18a6ff7462b45f38e39f2fc30c1c"),
    ]
)

