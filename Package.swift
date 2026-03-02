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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9222BFFE-E79F-4E64-8551-F261305C44E1/libimobiledevice.xcframework.zip", checksum: "73ea039f2cc434f53ccc99ac66ea2dff8f9690b96274b9f6832a7ae4e12e4e78"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9222BFFE-E79F-4E64-8551-F261305C44E1/libimobiledevice_glue.xcframework.zip", checksum: "843bca737bc93d6ba52572a84261ac1f1845eb6463fc99766d7a65b1d5b16d7f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9222BFFE-E79F-4E64-8551-F261305C44E1/libplist.xcframework.zip", checksum: "1fb59c0719fb1878334aca9a6f7cfe4be5f727995d9cd2303e172b1568f92593"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9222BFFE-E79F-4E64-8551-F261305C44E1/libtatsu.xcframework.zip", checksum: "406e5f14dfbf29d5481be85be0a12566174d85b8f224f8cc8fcf4c3e163b17fe"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9222BFFE-E79F-4E64-8551-F261305C44E1/libusbmuxd.xcframework.zip", checksum: "d5c01d7349fe78c7ac6570a4bd971d68e22e5fa5fe198b309f0457f2ce258289"),
    ]
)

