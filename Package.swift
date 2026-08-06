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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.509823E7-D666-4B55-90B1-2F8951D8B989/libimobiledevice.xcframework.zip", checksum: "d169da1362fea88d912d50b030a123d8b2fd95e3115bfbaa50cbf1c162b75abb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.509823E7-D666-4B55-90B1-2F8951D8B989/libimobiledevice_glue.xcframework.zip", checksum: "92142736b1410b7e3b571d5f35afe41f16b1be87342c613165bfcfc65a3d4d9a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.509823E7-D666-4B55-90B1-2F8951D8B989/libplist.xcframework.zip", checksum: "2e598e1e4ac9d07d4455685b6603a22947ba1a2f3c85834dcfda80a582abf6e4"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.509823E7-D666-4B55-90B1-2F8951D8B989/libtatsu.xcframework.zip", checksum: "8d30b21d1bc86d6471530062217ec71cc16312ebde7f509e26a0ec0e4adc1629"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.509823E7-D666-4B55-90B1-2F8951D8B989/libusbmuxd.xcframework.zip", checksum: "bd696231e511ac4017e42928f940d3ecc53b57b180dd23cf040a3e9e98bbd523"),
    ]
)

