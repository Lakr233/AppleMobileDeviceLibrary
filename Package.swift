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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC7AA784-0E4F-41B1-9BE8-6AD6BC126CB5/libimobiledevice.xcframework.zip", checksum: "30e02b3b690586e9e37a88635b31dc2665bba060d2bd012cd308b17891c4dc4e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC7AA784-0E4F-41B1-9BE8-6AD6BC126CB5/libimobiledevice_glue.xcframework.zip", checksum: "913de910f41e5aef6987c28314c71eb6f0cbd0c816b8bc28983c59eac2f75779"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC7AA784-0E4F-41B1-9BE8-6AD6BC126CB5/libplist.xcframework.zip", checksum: "04117a32889dcb86acc18a859a30dcf4e57c7e6324b9dffc3bdb81a22fa92fc5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC7AA784-0E4F-41B1-9BE8-6AD6BC126CB5/libtatsu.xcframework.zip", checksum: "47d1cd255c74e502462c7460d084caa1d2e5f4e764e8c54f4b0d9d22104b0ffe"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC7AA784-0E4F-41B1-9BE8-6AD6BC126CB5/libusbmuxd.xcframework.zip", checksum: "40fbc733c2b9157c80b878c396d3907403baa116cd3fbd27051c2df39534e7ab"),
    ]
)

