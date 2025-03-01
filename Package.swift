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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0AF3D0B0-7BF4-42C0-99F9-3560B105BBE6/libimobiledevice.xcframework.zip", checksum: "99b208a9b3c2f883eff308ccc2e1efb62090c6bd5758f516f339cb1ca9c2be74"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0AF3D0B0-7BF4-42C0-99F9-3560B105BBE6/libimobiledevice_glue.xcframework.zip", checksum: "d73964d8e8244e974060a61d8d6a338e0d6019fb8638cdef61d3864ded793260"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0AF3D0B0-7BF4-42C0-99F9-3560B105BBE6/libplist.xcframework.zip", checksum: "0e5e3c4e9a783413c4b4b1984a92f815be114c76dea152f5fbdb84e9bf668001"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0AF3D0B0-7BF4-42C0-99F9-3560B105BBE6/libtatsu.xcframework.zip", checksum: "f74a0411ea288923eb1914275a268ee16a97f636571e18d5286faa47d2941469"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0AF3D0B0-7BF4-42C0-99F9-3560B105BBE6/libusbmuxd.xcframework.zip", checksum: "cdeb5d4d185481dd98e7d78748127f175e662d19c713e72742644896b2f22a66"),
    ]
)

