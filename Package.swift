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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0B94597A-B139-4209-9289-A297CDB9FE91/libimobiledevice.xcframework.zip", checksum: "0a6c8673a6ada6d8c73ad19f976b692ff403c4ada7a11bb39d37aa2b221cca41"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0B94597A-B139-4209-9289-A297CDB9FE91/libimobiledevice_glue.xcframework.zip", checksum: "ad2ef1fac4231ea65b5ff0591996bbdc750d267a8f87e707a02434b7e87b1b6c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0B94597A-B139-4209-9289-A297CDB9FE91/libplist.xcframework.zip", checksum: "61ca71b5dace7f7c7c19313135b7208468d86d7296b58cae0b39f9523e4d49b3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0B94597A-B139-4209-9289-A297CDB9FE91/libtatsu.xcframework.zip", checksum: "89d65b23592bd8121d284bba94a7a861f5b54b14092d3949dd24e5256434dc86"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0B94597A-B139-4209-9289-A297CDB9FE91/libusbmuxd.xcframework.zip", checksum: "fb1582e61f02a69bed4daad13c93d985837c0a95a10e1b8f6a6e769760d88cc6"),
    ]
)

