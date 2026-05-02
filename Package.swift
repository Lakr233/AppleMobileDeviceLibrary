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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A1AB9E89-5C75-4046-B705-F4A22E6C6FFF/libimobiledevice.xcframework.zip", checksum: "391040eec510d2129524c91ab74ac2f1b767e64a7e60016df306a06bfc7827f2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A1AB9E89-5C75-4046-B705-F4A22E6C6FFF/libimobiledevice_glue.xcframework.zip", checksum: "46744216c2834c554975efaa91b5ed9dfaafdeecae3f729d7bcd5a116f5efaff"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A1AB9E89-5C75-4046-B705-F4A22E6C6FFF/libplist.xcframework.zip", checksum: "2da64189f4f642ebbaea0fef13fa15f6a1b243d82a11898afd273d536132cc43"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A1AB9E89-5C75-4046-B705-F4A22E6C6FFF/libtatsu.xcframework.zip", checksum: "bf30d60f1fc949fb103b62c58eef380d987e55e361c3343168ae0aa556285820"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A1AB9E89-5C75-4046-B705-F4A22E6C6FFF/libusbmuxd.xcframework.zip", checksum: "d53f5ca525c0ca5e299a5bd106b02876ac2794a775993440c18b11aee39a428d"),
    ]
)

