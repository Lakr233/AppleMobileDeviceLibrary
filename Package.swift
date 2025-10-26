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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8A1B3950-382C-4080-9618-9FB7DAE04E72/libimobiledevice.xcframework.zip", checksum: "3e420405ea80a00873cb1697ff15a8de09f7d2ebc78c15cc6d04c1ec3c4274bc"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8A1B3950-382C-4080-9618-9FB7DAE04E72/libimobiledevice_glue.xcframework.zip", checksum: "1071b8c58390b7573a9013a1752afdd5fb4cfea7eed2cd2655131e0c25b2036a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8A1B3950-382C-4080-9618-9FB7DAE04E72/libplist.xcframework.zip", checksum: "002d64fe4a83a814a87154710c1139e51a3d5dc83854f2d82ed8935fbe458e8a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8A1B3950-382C-4080-9618-9FB7DAE04E72/libtatsu.xcframework.zip", checksum: "24c12064e467d70d92c4bfab28e49bbe8f91cd04915d24074b14f62a27aaf290"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8A1B3950-382C-4080-9618-9FB7DAE04E72/libusbmuxd.xcframework.zip", checksum: "cd0e71c15793b09b11887e31fd6ddad1082e99c7c2152f70f5be84dfc37ef27f"),
    ]
)

