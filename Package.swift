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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.558763BB-7F5B-44A1-B1BB-654D89E9B3CC/libimobiledevice.xcframework.zip", checksum: "d9fddf08fb40cbcc76fc9141c62ecfc67f22664851acfe0043b6cfbcf59927b3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.558763BB-7F5B-44A1-B1BB-654D89E9B3CC/libimobiledevice_glue.xcframework.zip", checksum: "47a45da22676134c4791e3a605975184692138feb5d6a89fa793221023a9e214"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.558763BB-7F5B-44A1-B1BB-654D89E9B3CC/libplist.xcframework.zip", checksum: "2db12cf92b9f1ecace2c0e9cd166195cd563800786445e3d5eee65f07b916c5e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.558763BB-7F5B-44A1-B1BB-654D89E9B3CC/libtatsu.xcframework.zip", checksum: "c1acf23f76cfbb6d4e18ca9d766e5c8b3d01f78b6f30ce67e00594f5479bf781"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.558763BB-7F5B-44A1-B1BB-654D89E9B3CC/libusbmuxd.xcframework.zip", checksum: "00d7195981e9d8475131c4244d2e065b97b29b915f4e50f533ab8c149626f1b3"),
    ]
)

