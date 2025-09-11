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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6C8915FF-9872-4030-88D6-153A57BAC31D/libimobiledevice.xcframework.zip", checksum: "594ea11050761d853133a72865875d174810d348f3cdce07c9aeab7cf706a517"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6C8915FF-9872-4030-88D6-153A57BAC31D/libimobiledevice_glue.xcframework.zip", checksum: "bf3a39bcf0edd5eb9f6a2c1d6fd2378966725c48b3e9df984e6a8f0f43338ca7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6C8915FF-9872-4030-88D6-153A57BAC31D/libplist.xcframework.zip", checksum: "df63e09f6100d0c0edaa18d6767298f67256f2dac2877f4cca444d5f78588e81"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6C8915FF-9872-4030-88D6-153A57BAC31D/libtatsu.xcframework.zip", checksum: "ac87ba4f03bd43e9edd31c2a6b6c6a3ca3428597d66a56fbac90c0a03db76738"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6C8915FF-9872-4030-88D6-153A57BAC31D/libusbmuxd.xcframework.zip", checksum: "3a02fe5d397d0ef4eb40099c66f496c465f361da50bf8478db37761521a1a88e"),
    ]
)

