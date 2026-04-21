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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.51ACFBA2-A0D2-466F-9B2B-B95527BF18FF/libimobiledevice.xcframework.zip", checksum: "38593e37db661afcaaa7d22527a57dde8eafb735704e2edcc0e497e10df4f5d5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.51ACFBA2-A0D2-466F-9B2B-B95527BF18FF/libimobiledevice_glue.xcframework.zip", checksum: "4a2befd75278b13b6b3736abbfc784f344899a4b2ee911579f8e3a244171f44b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.51ACFBA2-A0D2-466F-9B2B-B95527BF18FF/libplist.xcframework.zip", checksum: "c4a1effca7d7e8ecea1b94fae676cc8208095d9e1e033d0db5f387d588ccdb4c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.51ACFBA2-A0D2-466F-9B2B-B95527BF18FF/libtatsu.xcframework.zip", checksum: "5756483ea3a3e51b916b9f583e35cb24d884b072a7d9c014031872af3a169a50"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.51ACFBA2-A0D2-466F-9B2B-B95527BF18FF/libusbmuxd.xcframework.zip", checksum: "d7bb7fd2e5eac23a56ca4776a3089044cfe0b69dfb11b4bf12f660962fe49a32"),
    ]
)

