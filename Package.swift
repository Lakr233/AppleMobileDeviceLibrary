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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9B795857-1578-4574-9CD5-4E6834957C0B/libimobiledevice.xcframework.zip", checksum: "aa21089200e371580ef0d0120744f0f6fa2de818342a8607e2fffc75d3d1a48b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9B795857-1578-4574-9CD5-4E6834957C0B/libimobiledevice_glue.xcframework.zip", checksum: "3c203c35a9f2e749a91fd5bc62ec5f53586dbca960f124d4b02c93517d8ed269"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9B795857-1578-4574-9CD5-4E6834957C0B/libplist.xcframework.zip", checksum: "41cc046c8bbf92a57c6d93aca71eac7e3ef5baa13075f3b4b4f519ad009551fa"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9B795857-1578-4574-9CD5-4E6834957C0B/libtatsu.xcframework.zip", checksum: "aabc57485b3373d40774c2abe34cff879908cb54d5a726af825b3c704530792b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9B795857-1578-4574-9CD5-4E6834957C0B/libusbmuxd.xcframework.zip", checksum: "d003da124fa2271be6a94da95241a15b3c2805f4f6c4625aca58c19f9bf03d6b"),
    ]
)

