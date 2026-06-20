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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61AFE0F6-4D82-4679-ACAF-9BA696838960/libimobiledevice.xcframework.zip", checksum: "6074601a16580aba2435ac1726ee247b10663cfe2bef0731d8accb168f04817f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61AFE0F6-4D82-4679-ACAF-9BA696838960/libimobiledevice_glue.xcframework.zip", checksum: "7975968b5491692ed69300dea904c07ff6896b7118bb70108c418367b642b3fd"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61AFE0F6-4D82-4679-ACAF-9BA696838960/libplist.xcframework.zip", checksum: "24017e01560a74aa4ad6c417c9435bde9b2acde835fd6d7807db0fc68318c772"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61AFE0F6-4D82-4679-ACAF-9BA696838960/libtatsu.xcframework.zip", checksum: "2e5cf41f5420908fd6f2012abf38b4bb821ded12a8d45449e7b4ba25a17ac4c7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.61AFE0F6-4D82-4679-ACAF-9BA696838960/libusbmuxd.xcframework.zip", checksum: "fb06bad9522b7aa40624ebe8e43e0116cf906abd331aad2d79030bc17d6eb64b"),
    ]
)

