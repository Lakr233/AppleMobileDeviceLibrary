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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E03FB293-CCF8-42B6-B830-A9FB966B70E4/libimobiledevice.xcframework.zip", checksum: "ebebcda5851e016b6261de5b4b754adb0d397f2fd4713a65821606569d50cb78"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E03FB293-CCF8-42B6-B830-A9FB966B70E4/libimobiledevice_glue.xcframework.zip", checksum: "e87c1b96670c47f4efa0ac2038bc68374c9bf6a08beff000eed594b90f9fe312"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E03FB293-CCF8-42B6-B830-A9FB966B70E4/libplist.xcframework.zip", checksum: "5634c3325db7da5c304ca30ad000b7be2177b4f1617ecc1863139c20daa1bc26"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E03FB293-CCF8-42B6-B830-A9FB966B70E4/libtatsu.xcframework.zip", checksum: "9e9ae8c122ceb9c235da5d05170e0ba99659d8263e9b547ce055126a41cc4ebe"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E03FB293-CCF8-42B6-B830-A9FB966B70E4/libusbmuxd.xcframework.zip", checksum: "628a40e9eb636c0946098c40c81887662d357fa784baaee29ffffd517d829382"),
    ]
)

