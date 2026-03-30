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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AFA242E7-3493-4EC5-BF87-288544708B2F/libimobiledevice.xcframework.zip", checksum: "e05592b113628d76fdcb7bcfaff3507dfa51219c1b9d1eeb88328605f655691b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AFA242E7-3493-4EC5-BF87-288544708B2F/libimobiledevice_glue.xcframework.zip", checksum: "67ec9589e4ec5ac66b785a3154089a7b9e7b80c2a496968722c8474026a2ed17"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AFA242E7-3493-4EC5-BF87-288544708B2F/libplist.xcframework.zip", checksum: "188d533f8dd66a5ac4ac6028e0e397dfea2d4080bacabee3cc3b06bc5090d3a9"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AFA242E7-3493-4EC5-BF87-288544708B2F/libtatsu.xcframework.zip", checksum: "93d44d1369d2175b23748ae4bdd48069f8551048b7d5cee95723c6633fcaadfb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AFA242E7-3493-4EC5-BF87-288544708B2F/libusbmuxd.xcframework.zip", checksum: "8490f51678e3d298bbd8f48697412af4e43c00b40251a9b6670d4bc6e44cc1fe"),
    ]
)

