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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A02AF743-FF93-4C4D-9A0E-99AD6A33ECC9/libimobiledevice.xcframework.zip", checksum: "b19dce95c6562651495686ba3a93383ba661ca20a876f9f2fed607a930132e29"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A02AF743-FF93-4C4D-9A0E-99AD6A33ECC9/libimobiledevice_glue.xcframework.zip", checksum: "50868caaff1546edf6c4a3f0bed1b3af1e6eb8e4e46f5dfc844c33e3b677d118"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A02AF743-FF93-4C4D-9A0E-99AD6A33ECC9/libplist.xcframework.zip", checksum: "773fd2dea3424f19fe9b0479a01dd2037bffd26fbbb6133db7ea888aecaead00"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A02AF743-FF93-4C4D-9A0E-99AD6A33ECC9/libusbmuxd.xcframework.zip", checksum: "116d6c33ee0367025424fd493f4430425c35d0d82b3c5d18acea4b1d50a66340"),
    ]
)

