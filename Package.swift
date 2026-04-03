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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5BBE3299-58D3-4FAC-BC20-0EF32F9362A4/libimobiledevice.xcframework.zip", checksum: "8ad9fb6e25a7e882b933cdd92eb40997f84a0241795856752d41745ab45bc6a1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5BBE3299-58D3-4FAC-BC20-0EF32F9362A4/libimobiledevice_glue.xcframework.zip", checksum: "f32a21ca4e4ed04001c61956c0805a3ed06fd8df924c18959180114708c5ac48"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5BBE3299-58D3-4FAC-BC20-0EF32F9362A4/libplist.xcframework.zip", checksum: "5c66ef4292add38dbf30b9a5be0ccf154e9c655cf62ecea96bc7068f855f0d1b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5BBE3299-58D3-4FAC-BC20-0EF32F9362A4/libtatsu.xcframework.zip", checksum: "1d0cc015183122bab3e97031855f354d14f1b5649ffce3b411b2f4646034a26a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5BBE3299-58D3-4FAC-BC20-0EF32F9362A4/libusbmuxd.xcframework.zip", checksum: "553d7c4431e6f9471fbe3f583a0fc748ed3679eff21f88f6c67d5103bc74cb38"),
    ]
)

