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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D1DFD8D-7EA8-47F9-8958-38A72F3A7E5F/libimobiledevice.xcframework.zip", checksum: "24c2dbbb85178b30d9913ecaf744657704b06064cd45783ecc2426f1645ccb53"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D1DFD8D-7EA8-47F9-8958-38A72F3A7E5F/libimobiledevice_glue.xcframework.zip", checksum: "baf1c7c530b7fc4a4ef667301bb5dd8ef62479aac8563a055263e23f750e2d85"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D1DFD8D-7EA8-47F9-8958-38A72F3A7E5F/libplist.xcframework.zip", checksum: "c77c82760edc666e9d69e7d79982f772e93a444371c352989b7d144f462dae2b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D1DFD8D-7EA8-47F9-8958-38A72F3A7E5F/libtatsu.xcframework.zip", checksum: "6b0ffda97fd2d2f4c9b8ef307e26e7854c1d2555eba2d76ba8f8f1f4d0cfa4eb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7D1DFD8D-7EA8-47F9-8958-38A72F3A7E5F/libusbmuxd.xcframework.zip", checksum: "c870134f51c2565dc8218164b2d89eca16cdecc53668b0dfa830ce34a767b154"),
    ]
)

