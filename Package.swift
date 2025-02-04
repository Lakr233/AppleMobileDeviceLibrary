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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AC80CC8A-61D3-4E03-8646-B62F000DE3D5/libimobiledevice.xcframework.zip", checksum: "131166bf6fdaa17f3dca8a2495600118d2d9112be2fc7ec817699188ffd2d265"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AC80CC8A-61D3-4E03-8646-B62F000DE3D5/libimobiledevice_glue.xcframework.zip", checksum: "c3d6fcfe4a337990222de170097cb54aef58e9560ad3fd517aca2e93b0974e65"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AC80CC8A-61D3-4E03-8646-B62F000DE3D5/libplist.xcframework.zip", checksum: "8360d72fe6793739a68fb0271787fad66bbe8d29c994af9a51a13ee3f81fdf41"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AC80CC8A-61D3-4E03-8646-B62F000DE3D5/libtatsu.xcframework.zip", checksum: "11e59af58333ceacbcb24c5c3a8053c71ed15f5d369842ac740b8c258edf14ec"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AC80CC8A-61D3-4E03-8646-B62F000DE3D5/libusbmuxd.xcframework.zip", checksum: "37493840e206fcc6a5a717dd03f899304a07b8da0e7390cf3e17fc87e1ceac7b"),
    ]
)

