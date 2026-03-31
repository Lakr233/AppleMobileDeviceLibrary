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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.72C80D3C-FCFC-4B1E-B665-CE7BD6B7D4A6/libimobiledevice.xcframework.zip", checksum: "cdbcc8ae38a29f7e00e73b143414558de76f084ba9e3d7ae58f01cedf8ab532f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.72C80D3C-FCFC-4B1E-B665-CE7BD6B7D4A6/libimobiledevice_glue.xcframework.zip", checksum: "53414939104e142c0b732c33400ce7ef492ea248d710bb7aad02ee0088ac4772"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.72C80D3C-FCFC-4B1E-B665-CE7BD6B7D4A6/libplist.xcframework.zip", checksum: "748f27c23abbedc09493e90025c315580b7b1ae5f1127cb0dd2d231e466b9254"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.72C80D3C-FCFC-4B1E-B665-CE7BD6B7D4A6/libtatsu.xcframework.zip", checksum: "e3012a13166c480d99e87f2ad5569f613745e500acb1ac36a263c43ece38c862"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.72C80D3C-FCFC-4B1E-B665-CE7BD6B7D4A6/libusbmuxd.xcframework.zip", checksum: "73cd93dd9b724720ef92cd312ce135240254e66c6a08d55a4d3c269f5acf015b"),
    ]
)

