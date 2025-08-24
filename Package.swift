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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2C15B2CE-0DC1-47C5-9591-899FE9AA20D6/libimobiledevice.xcframework.zip", checksum: "53de9cc677d3b0f5c8b840a71cb3e0adfbcb6e7303278c797789b7fa7209d425"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2C15B2CE-0DC1-47C5-9591-899FE9AA20D6/libimobiledevice_glue.xcframework.zip", checksum: "68612faf964876ce37c62cd1d45a62f3544762cccd5640571141a53bc532d1fe"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2C15B2CE-0DC1-47C5-9591-899FE9AA20D6/libplist.xcframework.zip", checksum: "c3d3108fdff14aac88d7de51ff45a2fd0fca4afb153706cbe77208ff3b6c852e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2C15B2CE-0DC1-47C5-9591-899FE9AA20D6/libtatsu.xcframework.zip", checksum: "9e0b4c639ada88f998a112e6dc9d3b4da1dfd2ffb0ce1886394507badbfb8eb5"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2C15B2CE-0DC1-47C5-9591-899FE9AA20D6/libusbmuxd.xcframework.zip", checksum: "42cb095eb477605f17ac5721839c39fe3f13c488edcf859738202f6511e7da99"),
    ]
)

