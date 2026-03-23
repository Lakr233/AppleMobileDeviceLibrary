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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7DC0373B-6089-44DB-81EF-1955807101A2/libimobiledevice.xcframework.zip", checksum: "691167739038192c75966aa28f863ed3b058b048efc25a7346583c1fe576f2e4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7DC0373B-6089-44DB-81EF-1955807101A2/libimobiledevice_glue.xcframework.zip", checksum: "743d21d7ae78f5ccb89252078873dc1f15960246eee258056d04c43d124a434b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7DC0373B-6089-44DB-81EF-1955807101A2/libplist.xcframework.zip", checksum: "db08f9bcfff827386a74df4171e334b473aa88858d74994834d59dbfe462bc21"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7DC0373B-6089-44DB-81EF-1955807101A2/libtatsu.xcframework.zip", checksum: "45fa89e3dc5f304b1a325dfbff60b8f1e2c9735c55a29016f7695520c387b0e6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7DC0373B-6089-44DB-81EF-1955807101A2/libusbmuxd.xcframework.zip", checksum: "7ae00c4e72de3477e0a155b3ae56070c567a97af9aef0af196423e1f55eb3d60"),
    ]
)

