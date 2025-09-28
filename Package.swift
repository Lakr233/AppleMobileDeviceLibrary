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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A743039D-8CCA-44A9-8E38-D4CBE95FCF34/libimobiledevice.xcframework.zip", checksum: "eb93d67fed99471c08d1e3c111b1969e3e6a8d1012f9d3e3050855af6fb3e357"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A743039D-8CCA-44A9-8E38-D4CBE95FCF34/libimobiledevice_glue.xcframework.zip", checksum: "9a59dc0ec84895135f20c8bb43b304582b8876b5723837024c604fcb438c4a18"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A743039D-8CCA-44A9-8E38-D4CBE95FCF34/libplist.xcframework.zip", checksum: "4a95f22cd2ab2fb9196f84b5a8ed01baa394523555bafbea7e53a8106d6b8b09"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A743039D-8CCA-44A9-8E38-D4CBE95FCF34/libtatsu.xcframework.zip", checksum: "170855f7976ba43a108231a815016cb0818d8d1dee3ec0b75bb21c86e2245304"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A743039D-8CCA-44A9-8E38-D4CBE95FCF34/libusbmuxd.xcframework.zip", checksum: "47ae4cb0ca594def7bd606445bcafff02afa880f934abf07f6eac1eb5868fa7c"),
    ]
)

