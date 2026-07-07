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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.595BA034-E29D-44AD-A0EB-02E8CEA40351/libimobiledevice.xcframework.zip", checksum: "90f9bde07ad2733260cc6f73dffaaef5df33e0646d8cc88a72ff2fadecaf6c7b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.595BA034-E29D-44AD-A0EB-02E8CEA40351/libimobiledevice_glue.xcframework.zip", checksum: "2aaca20906728f1d5ea2f1512fa57f7d82fab180baea01835a5ca9ac352f1098"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.595BA034-E29D-44AD-A0EB-02E8CEA40351/libplist.xcframework.zip", checksum: "34df351604c84e058df3f29f195b592c797be0b40c31d2d0379768f794053752"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.595BA034-E29D-44AD-A0EB-02E8CEA40351/libtatsu.xcframework.zip", checksum: "61f635b9fb294e2f4f495054a97f697156e675002f6a9adbb6edf0471245fc99"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.595BA034-E29D-44AD-A0EB-02E8CEA40351/libusbmuxd.xcframework.zip", checksum: "7780cb5b104a55110d5edef0ee4e4b2523d8218c7ca57e275ed980f171f7a68e"),
    ]
)

