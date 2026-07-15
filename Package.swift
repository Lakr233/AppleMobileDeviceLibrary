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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.600D2223-8E0A-42B1-AA47-6037F95A7948/libimobiledevice.xcframework.zip", checksum: "1e52606cac84a37ecc44e9ae3c612ad1ed4cf232096e71dc47130f293716a553"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.600D2223-8E0A-42B1-AA47-6037F95A7948/libimobiledevice_glue.xcframework.zip", checksum: "4bce53f322fc413ef269197b39773b6068640792c0841c3c0e8534c731f5a69f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.600D2223-8E0A-42B1-AA47-6037F95A7948/libplist.xcframework.zip", checksum: "693acaaadfcd81a1dd19694c058d3f857aa940796b84233a7a62b318bb4981e0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.600D2223-8E0A-42B1-AA47-6037F95A7948/libtatsu.xcframework.zip", checksum: "5d0f8a42bf8485bc3c8e0e70166616b72bb7636a0c4619d9429ecd10451db062"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.600D2223-8E0A-42B1-AA47-6037F95A7948/libusbmuxd.xcframework.zip", checksum: "52a9cea214e24f286c8ee45e2b459317daa4192dc3a01bb2f93c0e922e7e59a4"),
    ]
)

