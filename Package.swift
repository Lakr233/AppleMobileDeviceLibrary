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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.21BD260E-DA2F-4442-875C-656421E0EB8D/libimobiledevice.xcframework.zip", checksum: "5cd3e90d385b1dae57684b56fb3299dd4931f23ac9cc4b1c11edbab7b3c98bf1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.21BD260E-DA2F-4442-875C-656421E0EB8D/libimobiledevice_glue.xcframework.zip", checksum: "c46c09d44a695b9daa276a35811935dc0de231ca60006e93bbeb0cb7ab583cd5"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.21BD260E-DA2F-4442-875C-656421E0EB8D/libplist.xcframework.zip", checksum: "8c08d25e0b2f8582940bb9285a928a3acc515ff8816c901ef94697d27b0739d7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.21BD260E-DA2F-4442-875C-656421E0EB8D/libtatsu.xcframework.zip", checksum: "52dff2bf74b3b68b8a93fc5b66143f0e28ffc0ebda912ce5bb7d45a423a905e9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.21BD260E-DA2F-4442-875C-656421E0EB8D/libusbmuxd.xcframework.zip", checksum: "12e50b2fcd3af8c974a9462bc497e35d39d09b8bd7495280315943a6bb136606"),
    ]
)

