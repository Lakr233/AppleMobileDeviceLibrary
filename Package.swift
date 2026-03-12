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
        .library(
            name: "libimobiledevice",
            targets: ["libimobiledevice"]
        ),
        .library(
            name: "libimobiledevice_glue",
            targets: ["libimobiledevice_glue"]
        ),
        .library(
            name: "libplist",
            targets: ["libplist"]
        ),
        .library(
            name: "libtatsu",
            targets: ["libtatsu"]
        ),
        .library(
            name: "libusbmuxd",
            targets: ["libusbmuxd"]
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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.63539F36-93E6-4925-BF7E-815BB5140942/libimobiledevice.xcframework.zip", checksum: "158fb183f81b3463299c4efae1e580228d41e15440bd4868d1334eb13da72d56"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.63539F36-93E6-4925-BF7E-815BB5140942/libimobiledevice_glue.xcframework.zip", checksum: "a1aa0e94db4275be7da51477d28720cdcea3eb20b105d78d7a65cd9384bfe6ca"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.63539F36-93E6-4925-BF7E-815BB5140942/libplist.xcframework.zip", checksum: "8dfd1245c77892a03993515a4bf7a36fbc15f938b73d57178b9843eb557e1d38"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.63539F36-93E6-4925-BF7E-815BB5140942/libtatsu.xcframework.zip", checksum: "a215c17b9e7f28dc2a8bea055cb402966abe8ec474d8077fb19a96a137a3f0f8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.63539F36-93E6-4925-BF7E-815BB5140942/libusbmuxd.xcframework.zip", checksum: "37aeaf660410f663e7196ef245a0c8c541f9915f692c1b11599ef1bdb8dbc7c9"),
    ]
)
