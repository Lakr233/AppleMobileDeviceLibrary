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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.83BC0678-1532-4FB4-BA77-449B736D480D/libimobiledevice.xcframework.zip", checksum: "98e2128f8c144e7fbcde337d7039a69f40a60ce249b7969f9962d90b80e47431"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.83BC0678-1532-4FB4-BA77-449B736D480D/libimobiledevice_glue.xcframework.zip", checksum: "5c95ac9433d551ec1aa6feae2dc16eba53e55f44b58acbe4742d1aa510338aec"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.83BC0678-1532-4FB4-BA77-449B736D480D/libplist.xcframework.zip", checksum: "6f9c34adc529d292835e606db762e9a5d705e18ae7018f4bbb37e605d3b6b478"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.83BC0678-1532-4FB4-BA77-449B736D480D/libtatsu.xcframework.zip", checksum: "b65c1cca83bfbd4b6e5662decfab4cf49059546ad1cc12c5f76bac0ebbb8a117"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.83BC0678-1532-4FB4-BA77-449B736D480D/libusbmuxd.xcframework.zip", checksum: "4c248bc6d5cecfae6a545ef39ad4ce7838657341cbb473098f2bd9121c38f6e3"),
    ]
)

