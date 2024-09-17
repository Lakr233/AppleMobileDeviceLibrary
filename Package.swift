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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5602451-0424-4459-A46A-EDCB4E33674C/libimobiledevice.xcframework.zip", checksum: "e5f6248eaf4f5fc912f0e73b99d3fe401b3a2bc426a0cf64eab123679b8b46b9"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5602451-0424-4459-A46A-EDCB4E33674C/libimobiledevice_glue.xcframework.zip", checksum: "4d6edcada301388b3f36c9d7aaa7ca36385f5de785cd5962586f9150e92679d7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5602451-0424-4459-A46A-EDCB4E33674C/libplist.xcframework.zip", checksum: "8985db3daf08279cdb2d6ad13be9c758fdc6c6fc1d6ce514d64b4ce198fc8d05"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5602451-0424-4459-A46A-EDCB4E33674C/libtatsu.xcframework.zip", checksum: "2fca909df664f57464f7173f58ad410a4cb242a076bc0e842c7ca1297f559ca6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C5602451-0424-4459-A46A-EDCB4E33674C/libusbmuxd.xcframework.zip", checksum: "42cfdb85a0f13ad4bdf76eaf806d0f551ba57d3f939169a66921c7bd75bc19ce"),
    ]
)

