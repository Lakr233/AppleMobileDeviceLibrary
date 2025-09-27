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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5F294BCE-C022-4FE8-B374-C6C7E54C5DCD/libimobiledevice.xcframework.zip", checksum: "69067ccc63107681f8daa8cbe4913bbe9c570d34f47a4947e0ab8ce804ec019c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5F294BCE-C022-4FE8-B374-C6C7E54C5DCD/libimobiledevice_glue.xcframework.zip", checksum: "9de098a00b5b232bc55f1b8b784f6a7dd88bd2fca1cb061252f3d5cce3abb9fa"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5F294BCE-C022-4FE8-B374-C6C7E54C5DCD/libplist.xcframework.zip", checksum: "6076a800bbe18064ea5be7032f5b5b82876fc91bae44f79d053257b567588b93"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5F294BCE-C022-4FE8-B374-C6C7E54C5DCD/libtatsu.xcframework.zip", checksum: "93d694063ee4d3fa6492dc0dfe75ccf78971df69ab06888894df3d1ad5c3d429"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5F294BCE-C022-4FE8-B374-C6C7E54C5DCD/libusbmuxd.xcframework.zip", checksum: "0d955a98e281f8a07ea2f7678d2419cc2f2774b37250dc3406b71c103d65ed3f"),
    ]
)

