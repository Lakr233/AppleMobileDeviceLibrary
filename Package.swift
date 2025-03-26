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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B619234D-D9A1-4224-8E89-4C94C329C3F6/libimobiledevice.xcframework.zip", checksum: "23a177ee9738aa1280f6a5596de7a6af29609d5bb9441d5a0fac50d7549f1bd7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B619234D-D9A1-4224-8E89-4C94C329C3F6/libimobiledevice_glue.xcframework.zip", checksum: "c92048d3370feb59bbac5c95f476c308985276bdad1a0d951f54095392c9a450"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B619234D-D9A1-4224-8E89-4C94C329C3F6/libplist.xcframework.zip", checksum: "bf66b7c190477357f93dc8a6e4b9ecdcafe00f3d5a65f2f06cb74f5f4f37e339"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B619234D-D9A1-4224-8E89-4C94C329C3F6/libtatsu.xcframework.zip", checksum: "d576ebdc390f2e0b53b942e59306743d15147151b28ffb3a49757b05fdd1252c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B619234D-D9A1-4224-8E89-4C94C329C3F6/libusbmuxd.xcframework.zip", checksum: "a347d7b74a047e6b7f8af86cf644aa008a68f2c127e09988d8cb7baa7e9fcc94"),
    ]
)

