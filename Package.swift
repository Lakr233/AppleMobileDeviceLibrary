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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C9DEC8A6-212A-483B-9BC2-93F6AE37A1EB/libimobiledevice.xcframework.zip", checksum: "242d1d53aa60b264548eedfb89acea7d18e77b5d0ff3202323f4b39c74ca37b5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C9DEC8A6-212A-483B-9BC2-93F6AE37A1EB/libimobiledevice_glue.xcframework.zip", checksum: "9f4d6653359e36c42b258aebf63579db6bd8d921d366e5fc527dacc0ecbb6884"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C9DEC8A6-212A-483B-9BC2-93F6AE37A1EB/libplist.xcframework.zip", checksum: "71ac86bf4825478c11cbd1a0b448e5f13624fd3d14a7b550df3504149d9b211f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C9DEC8A6-212A-483B-9BC2-93F6AE37A1EB/libtatsu.xcframework.zip", checksum: "947f2d3ae17dbf54f0f1cf9ab696c5ef790da37dfe838f946f9ad91707bedb5c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C9DEC8A6-212A-483B-9BC2-93F6AE37A1EB/libusbmuxd.xcframework.zip", checksum: "140b43330061a38451947eab9505a2a2dc853719d262afc7d8f93b5096529d01"),
    ]
)

