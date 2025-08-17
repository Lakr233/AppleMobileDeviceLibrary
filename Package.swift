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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.251335EA-7AFD-4B3B-8E25-B9B0BF90AA72/libimobiledevice.xcframework.zip", checksum: "b30d7f383965a807561db709cdc4c145c128fee1e42236733b24091ae58ac10e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.251335EA-7AFD-4B3B-8E25-B9B0BF90AA72/libimobiledevice_glue.xcframework.zip", checksum: "0a95c4953cbb8ccbe7ad3c8131bda8c29f6b0832f74647fedc431c594d78ce44"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.251335EA-7AFD-4B3B-8E25-B9B0BF90AA72/libplist.xcframework.zip", checksum: "c5135b969366cd9779a75dfc5718e06a1181ef9a51a924cf516478a45ce77ccc"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.251335EA-7AFD-4B3B-8E25-B9B0BF90AA72/libtatsu.xcframework.zip", checksum: "1caf608508b13dff3c36aea86b419a89d671f8201509bda98b1ab0183eb97d93"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.251335EA-7AFD-4B3B-8E25-B9B0BF90AA72/libusbmuxd.xcframework.zip", checksum: "21d15523be20709664eb5b37f81468601a94556a39794a7a02bdc881b33e5555"),
    ]
)

