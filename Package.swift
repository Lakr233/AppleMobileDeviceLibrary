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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FACC7BEA-9B5B-4E22-847C-8A7D777C60CE/libimobiledevice.xcframework.zip", checksum: "7f5de322a3a70e9f4f2199c909cc62a6ee1886afa09d8c2a4b9053e2ea99cf39"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FACC7BEA-9B5B-4E22-847C-8A7D777C60CE/libimobiledevice_glue.xcframework.zip", checksum: "c2544d518320a9ff234f2e9e3efd008fdb94232a9073f4d593f57e97464b6283"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FACC7BEA-9B5B-4E22-847C-8A7D777C60CE/libplist.xcframework.zip", checksum: "6da172c10055b4e17f0d134f66c6b2b118d26f326d2a96b12e3beca93dc60651"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FACC7BEA-9B5B-4E22-847C-8A7D777C60CE/libtatsu.xcframework.zip", checksum: "e0933f3220da1f502c28c7aaf07be557b5d227425e610b87153880c45ac6470b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FACC7BEA-9B5B-4E22-847C-8A7D777C60CE/libusbmuxd.xcframework.zip", checksum: "7a7422b79ee36977b1ddb20f2fdbe0417280d80c2405d1a77ef23f1fb26d06bc"),
    ]
)

