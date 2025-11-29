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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.64373E9A-A6B4-483B-A0BF-E5D843635E73/libimobiledevice.xcframework.zip", checksum: "0b9e5269b70485808dd8eebe6c27f47ff6fe6fcb1e1a3315acb9bfe91f72abdb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.64373E9A-A6B4-483B-A0BF-E5D843635E73/libimobiledevice_glue.xcframework.zip", checksum: "99babbe6abae3b591f5c61e00735e650750b16f7bfff4abb48ada9edb05022dd"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.64373E9A-A6B4-483B-A0BF-E5D843635E73/libplist.xcframework.zip", checksum: "6469386d24ac00877d105090b670e226a32d53042132bba4954a087ac5f33dd1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.64373E9A-A6B4-483B-A0BF-E5D843635E73/libtatsu.xcframework.zip", checksum: "a91d11038c07134f10099257b431adf947d0faae2c5025bc509d674279588de4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.64373E9A-A6B4-483B-A0BF-E5D843635E73/libusbmuxd.xcframework.zip", checksum: "b3c52f64e116508ccecd19f74ac20c8169577fb3829ff1d59a5aad960f236be6"),
    ]
)

