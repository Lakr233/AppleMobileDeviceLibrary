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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FFEAFB13-651D-4925-9691-205590C415D3/libimobiledevice.xcframework.zip", checksum: "cca2469162bb6c13395f8dcaac3f32203ac3baf4041841ac9f691016a66542e7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FFEAFB13-651D-4925-9691-205590C415D3/libimobiledevice_glue.xcframework.zip", checksum: "448953ddc006b024d3a8b798f35f9c4910e7497a359614f3fc3c8a47d3d3f157"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FFEAFB13-651D-4925-9691-205590C415D3/libplist.xcframework.zip", checksum: "e0e87f04b221240292f50a70ba517f9628af988de5952d0d8cb39cc495ff803f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FFEAFB13-651D-4925-9691-205590C415D3/libtatsu.xcframework.zip", checksum: "87abda1e4e4d35a3f36425ebaa6cad1c9f80abbb83af13931f900909d1f2954c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FFEAFB13-651D-4925-9691-205590C415D3/libusbmuxd.xcframework.zip", checksum: "1009b5a0928b4f3454e3e7f0c5cdd6ea923c574e91aafdbabf13b3143d1f62cd"),
    ]
)

