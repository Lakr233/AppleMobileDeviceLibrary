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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9496F3D8-9AAC-4844-83BF-2EF9601ACB21/libimobiledevice.xcframework.zip", checksum: "d340f091058ae90a621ecd66ca724b823bad2107f04060fc0e37266b6f8ebb39"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9496F3D8-9AAC-4844-83BF-2EF9601ACB21/libimobiledevice_glue.xcframework.zip", checksum: "e7c509aa404b12ec8f31ef8e06759c08f7d028c8e2dc19c5f2ba82c2a966d948"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9496F3D8-9AAC-4844-83BF-2EF9601ACB21/libplist.xcframework.zip", checksum: "0eeb84f8597ca6526e7dbe99b7c271435980d0ebc76c8570b8674ecc34bb52ab"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9496F3D8-9AAC-4844-83BF-2EF9601ACB21/libtatsu.xcframework.zip", checksum: "ce978189af596bb8f2df090a9804410cd012f5e81f006e95185ae8d0d6575031"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9496F3D8-9AAC-4844-83BF-2EF9601ACB21/libusbmuxd.xcframework.zip", checksum: "9ecf3b4cb2b66c3d1aba6a517648b8837ce5bffe67c4656584268094c2da87f4"),
    ]
)

