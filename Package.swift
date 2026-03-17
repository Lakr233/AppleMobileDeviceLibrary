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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BAE89698-CEFB-4309-9123-3D5559319A37/libimobiledevice.xcframework.zip", checksum: "f26232b7d7d2c7c4c07212ffc5216de83e40187ad62745ee507c0a47f254d2af"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BAE89698-CEFB-4309-9123-3D5559319A37/libimobiledevice_glue.xcframework.zip", checksum: "d1ef5cfab3c7cf65bd649aa83e13544118ca82a821393ac2bb28f08bb4b87c18"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BAE89698-CEFB-4309-9123-3D5559319A37/libplist.xcframework.zip", checksum: "658e30a7e53940d282209b63c0a55f39c6b9e562237283ad097b273f139e4919"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BAE89698-CEFB-4309-9123-3D5559319A37/libtatsu.xcframework.zip", checksum: "3654b1a42610ecf0836d6fe6ba97fcc0352f454bfd09802cf3d1aa7661b2ae9d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BAE89698-CEFB-4309-9123-3D5559319A37/libusbmuxd.xcframework.zip", checksum: "4f19c4319494daa5ba8894187b8434c8507de1253b601aa80b77142f7f092e6e"),
    ]
)

