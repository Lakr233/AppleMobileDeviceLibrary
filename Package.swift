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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.977348C8-BF00-42EC-8F96-905BFEA9B38F/libimobiledevice.xcframework.zip", checksum: "a4db301530827f5ea16a79bebb48d8ea842833ee28d221153e01a97f6bb0fdf6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.977348C8-BF00-42EC-8F96-905BFEA9B38F/libimobiledevice_glue.xcframework.zip", checksum: "255630039c5b7b0d4a0fb5575071269dc2da2d9a93559f6ca89d5d14f227db10"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.977348C8-BF00-42EC-8F96-905BFEA9B38F/libplist.xcframework.zip", checksum: "b19b7b82d23268b19c5ba729c23629c1477a7ec27814ddba3447191274287a6b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.977348C8-BF00-42EC-8F96-905BFEA9B38F/libtatsu.xcframework.zip", checksum: "70e9b2292e51d88bc7a076b7a357c737c616178d1ded2098a1187e75dfa640f5"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.977348C8-BF00-42EC-8F96-905BFEA9B38F/libusbmuxd.xcframework.zip", checksum: "2b788a83577483151e8a7f51c1734c63042d8492dc38dab464a4c32994357cf0"),
    ]
)

