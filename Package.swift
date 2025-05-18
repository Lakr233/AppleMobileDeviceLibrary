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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E374449C-0E32-40C4-A282-5FA3030C5690/libimobiledevice.xcframework.zip", checksum: "ef50bf365bc024d0c62b9e08bb1b9fb0ade306f59f8aba4a451304a7256b1f84"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E374449C-0E32-40C4-A282-5FA3030C5690/libimobiledevice_glue.xcframework.zip", checksum: "bf14c54260651b53081a0b63e0b4933db12ae546acc787fd45afd1fd84b2c125"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E374449C-0E32-40C4-A282-5FA3030C5690/libplist.xcframework.zip", checksum: "60e0c921f21c9e27ee073c58528d9726096ca1322b84739df957e47ad185f715"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E374449C-0E32-40C4-A282-5FA3030C5690/libtatsu.xcframework.zip", checksum: "e51e789bfd62b519e0254ccbd2fae7b74a67c860907d96c8be2ab083d8db9502"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E374449C-0E32-40C4-A282-5FA3030C5690/libusbmuxd.xcframework.zip", checksum: "ddb1fc7f653421f1132ab8fd27640dd8b817f457a9a129bdcad5ffad8fc141ae"),
    ]
)

