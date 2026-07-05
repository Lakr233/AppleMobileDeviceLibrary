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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED01EBCB-69C6-4D46-8FCD-3EF7A0CBCF91/libimobiledevice.xcframework.zip", checksum: "113255367f070c525211e399000604ecb7296d77077654972c61f02609a5af5d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED01EBCB-69C6-4D46-8FCD-3EF7A0CBCF91/libimobiledevice_glue.xcframework.zip", checksum: "650903f8521e897478dd6c18a06c3ae6dd9f2ade2200487a00cd3407abee8eac"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED01EBCB-69C6-4D46-8FCD-3EF7A0CBCF91/libplist.xcframework.zip", checksum: "97c9b26c613aecc7098651a57f20057782f17ed0a3832dec805c8bb1b6265314"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED01EBCB-69C6-4D46-8FCD-3EF7A0CBCF91/libtatsu.xcframework.zip", checksum: "639822d51eda3e04d74b3b6e675dccfc136b9f3919193f56021fca99a0bfc8a5"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED01EBCB-69C6-4D46-8FCD-3EF7A0CBCF91/libusbmuxd.xcframework.zip", checksum: "c69d2fef2af2c0aafcaa97477f868cae6490cd4310e85f0216d6068611580865"),
    ]
)

