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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2716E851-40D9-475B-9412-34765641E2FD/libimobiledevice.xcframework.zip", checksum: "4613300769e8466882f4376a35ec0eae5db0cccb5315a970bee44340d606731e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2716E851-40D9-475B-9412-34765641E2FD/libimobiledevice_glue.xcframework.zip", checksum: "3fc7ffd640a59ac5f522044a941b5ddf38e76dce5b46756dd0c34ea8b924c4cf"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2716E851-40D9-475B-9412-34765641E2FD/libplist.xcframework.zip", checksum: "0f097c58b3265b9abf936e17fa121d993fe759e14c622c2b2d91b1708d3c3aaa"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2716E851-40D9-475B-9412-34765641E2FD/libtatsu.xcframework.zip", checksum: "1fd350e07bb61813ed6942b1bceb49c683281c5bffdd070d90da8c8c100a0131"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2716E851-40D9-475B-9412-34765641E2FD/libusbmuxd.xcframework.zip", checksum: "a014b9577b58102fad41d26ce9ab3dff1e7ae23443288e5011653dc760fe958f"),
    ]
)

