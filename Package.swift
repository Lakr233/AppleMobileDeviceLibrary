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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A8D277BB-FF1B-4E29-96B2-60CC39651C75/libimobiledevice.xcframework.zip", checksum: "a36bd4de93eb12c5dc888fca30ece769eb83e402b47b36f9d344bae4f3ca3d91"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A8D277BB-FF1B-4E29-96B2-60CC39651C75/libimobiledevice_glue.xcframework.zip", checksum: "bc77b21cdf22003b985dcc3ce3596aaaba644ac23fc88b9d39a9318d50b9462b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A8D277BB-FF1B-4E29-96B2-60CC39651C75/libplist.xcframework.zip", checksum: "0cd91bc48ff6eb9354fd0f28425b82a375e10b4c20da9e079caf37047a09af28"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A8D277BB-FF1B-4E29-96B2-60CC39651C75/libtatsu.xcframework.zip", checksum: "f84e2b14f5021ab781f63c6f14b13d7b85668c2ecd2863e03901f9d0e1654e95"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A8D277BB-FF1B-4E29-96B2-60CC39651C75/libusbmuxd.xcframework.zip", checksum: "c081c0010edb2656b94007ed6a3a079af9709a724f79c421bd55f49b6ff581ad"),
    ]
)

