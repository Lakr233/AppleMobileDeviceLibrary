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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3AC5CF0-519A-44FC-9745-212DDC7DD4AC/libimobiledevice.xcframework.zip", checksum: "a999534318bc318c3a9dfec03f496aa771262500ef2a5b1dc10fa5cd33e89c05"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3AC5CF0-519A-44FC-9745-212DDC7DD4AC/libimobiledevice_glue.xcframework.zip", checksum: "bc2f6359d7a0ed512d2203cc7d0aecaf0c099bb9628d3867d7857bdf70d0f3f4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3AC5CF0-519A-44FC-9745-212DDC7DD4AC/libplist.xcframework.zip", checksum: "81f8bc46502dc595907fe338a6932a0c2641f49f0a5bf4245cbbd6307285aeae"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3AC5CF0-519A-44FC-9745-212DDC7DD4AC/libtatsu.xcframework.zip", checksum: "54c2f405826d822f5faba8d0f20fbf6d6544779be274d8aefd325d8bf1d5d1d9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3AC5CF0-519A-44FC-9745-212DDC7DD4AC/libusbmuxd.xcframework.zip", checksum: "f82bb2f543fafa57ce074c6117e4c8df3c54c2ad47586ec86dc8e6ea709d1b6f"),
    ]
)

