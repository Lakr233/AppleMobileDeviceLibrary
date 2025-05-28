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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E491E5CB-488A-4FA2-AEFB-E1BC67394141/libimobiledevice.xcframework.zip", checksum: "59f6af172b2431bd6adffa8a3614876a497a7a6392564a695e2f940b11947913"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E491E5CB-488A-4FA2-AEFB-E1BC67394141/libimobiledevice_glue.xcframework.zip", checksum: "6d373101c62870cf916e30050b40c782cb26534560df104d9543b19cce1fb1c1"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E491E5CB-488A-4FA2-AEFB-E1BC67394141/libplist.xcframework.zip", checksum: "f1db9e3103fcdf38a45747c8ee720e4c386785350f696aaa0ed144e5b8557035"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E491E5CB-488A-4FA2-AEFB-E1BC67394141/libtatsu.xcframework.zip", checksum: "aa92e1026fc4a2a90b7f13d9e6a4e24c4a3bf7a4aa14cc07571810814a30de91"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E491E5CB-488A-4FA2-AEFB-E1BC67394141/libusbmuxd.xcframework.zip", checksum: "9bd7c446c4da945167f109d050e74a20c20464b4fb0dc3acd3e8c8465d69f8a3"),
    ]
)

