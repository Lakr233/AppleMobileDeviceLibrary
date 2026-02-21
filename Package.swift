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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.208FF4EE-ED2F-4F41-B391-8B4E4761F22F/libimobiledevice.xcframework.zip", checksum: "676faf7bcb757e444e7ce75971cb8b6d429663acb0e6fa49289ec320e4d2b9f2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.208FF4EE-ED2F-4F41-B391-8B4E4761F22F/libimobiledevice_glue.xcframework.zip", checksum: "ce09c77dedded4ef613afb7476124db38b4bf5de37a966317c898409c88236fd"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.208FF4EE-ED2F-4F41-B391-8B4E4761F22F/libplist.xcframework.zip", checksum: "9b2c7d942008e8b86edff10b5f63b74a0be2c4a21deb4ac9af8ddcf74c5c3716"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.208FF4EE-ED2F-4F41-B391-8B4E4761F22F/libtatsu.xcframework.zip", checksum: "fce41d4fc9bf90bedd15db577948c41b8de76631b6c99f57162f1312c92faca8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.208FF4EE-ED2F-4F41-B391-8B4E4761F22F/libusbmuxd.xcframework.zip", checksum: "b3a693652e54039dfc5e3a341ef78709c577c2cbabfe6bb26cde2e359c710de6"),
    ]
)

