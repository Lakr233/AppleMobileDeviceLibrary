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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.11304904-7502-40F2-AB2E-5BE951B7FD61/libimobiledevice.xcframework.zip", checksum: "3bd7c5415ec814aecb5b7a4c45271c10f5e4c3f80e5667dbdfe5564f5cbb2828"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.11304904-7502-40F2-AB2E-5BE951B7FD61/libimobiledevice_glue.xcframework.zip", checksum: "24512601538a5c81f448f4f3f38e9f8666eac301c795a21665895f205581f833"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.11304904-7502-40F2-AB2E-5BE951B7FD61/libplist.xcframework.zip", checksum: "0ef316eec90ff56650b9d823bec8615cc307c5e67046321559ccd22191112ff6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.11304904-7502-40F2-AB2E-5BE951B7FD61/libtatsu.xcframework.zip", checksum: "bc118a1927e0d5580175365f016095c6b3bc3b55b4ac2c84a80b9c0203459733"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.11304904-7502-40F2-AB2E-5BE951B7FD61/libusbmuxd.xcframework.zip", checksum: "49691b49fa32b04d32432d984294252c9dd9b211aa70b9b973760aca20ae41e6"),
    ]
)

