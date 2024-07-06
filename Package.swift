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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A3008767-1842-4832-AE85-29D4548EA798/libimobiledevice.xcframework.zip", checksum: "0370e51d455e996c6d1fc1685d20c08c9d5125a4b3817d209d304c83bf911ade"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A3008767-1842-4832-AE85-29D4548EA798/libimobiledevice_glue.xcframework.zip", checksum: "95d9a778cafba8aaf1a0f683b669545888cc22ca85f8ad88c56ac0f2a0b21bfd"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A3008767-1842-4832-AE85-29D4548EA798/libplist.xcframework.zip", checksum: "7e5c740cd9058195152ba64eee23850eee4bc672e418b89c439df1d9bd0c3228"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A3008767-1842-4832-AE85-29D4548EA798/libtatsu.xcframework.zip", checksum: "f304cd851244effe3ac9f78760836a04fb45975df1a26f420c83d665acd3089e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A3008767-1842-4832-AE85-29D4548EA798/libusbmuxd.xcframework.zip", checksum: "32049d4d5b94c16d5ec35666cea23f2c7a52dc2b81d0909609e9f1687f9fe933"),
    ]
)

