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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.58E7C35F-F39E-40ED-A8C7-24A960650B58/libimobiledevice.xcframework.zip", checksum: "75bee901549f8bed17c09464ff4d198681638ada1ba0f63a27ca04524988bb0c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.58E7C35F-F39E-40ED-A8C7-24A960650B58/libimobiledevice_glue.xcframework.zip", checksum: "ec7911e6580e5cabca17755200cf5695b15c6bbe1a649c85e9d35c46d3138cbd"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.58E7C35F-F39E-40ED-A8C7-24A960650B58/libplist.xcframework.zip", checksum: "68ca2a81514f4082fa092676ce9f662b5f574d7ff938dcc2a708ef67528299c0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.58E7C35F-F39E-40ED-A8C7-24A960650B58/libtatsu.xcframework.zip", checksum: "919e730717c7be34af3ca31986f3d9198e2be5684a86e36a34747fc470764594"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.58E7C35F-F39E-40ED-A8C7-24A960650B58/libusbmuxd.xcframework.zip", checksum: "eb424d39a53087771cafd49f12bd8b90985b07d8ff0f808006d439a79aae30e8"),
    ]
)

