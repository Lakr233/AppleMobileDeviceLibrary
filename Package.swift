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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.67CCA889-9E6E-4E94-B766-DD6CC66F3059/libimobiledevice.xcframework.zip", checksum: "c1b10d1d34e7827a9c0880a6f2ac7c3f16b9fc77d18407fdc72469fbf2dff2ea"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.67CCA889-9E6E-4E94-B766-DD6CC66F3059/libimobiledevice_glue.xcframework.zip", checksum: "37de872468671c7c9dc2e35a6214394ddfb756582646b7333ca836367f12d309"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.67CCA889-9E6E-4E94-B766-DD6CC66F3059/libplist.xcframework.zip", checksum: "62d4830c600f4083237a71b1ce22de98721f981a7dcaf155a1a1cd283d2f2a66"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.67CCA889-9E6E-4E94-B766-DD6CC66F3059/libtatsu.xcframework.zip", checksum: "63e33660dcb89c45e6188c29ba34a8a4fb6e832280e3ae4297d4b4c1ebb98cc9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.67CCA889-9E6E-4E94-B766-DD6CC66F3059/libusbmuxd.xcframework.zip", checksum: "b4104c19ef5d1fce4f04c3ea29031d4a13f26c9c1237da3e910ba1b5716219e0"),
    ]
)

