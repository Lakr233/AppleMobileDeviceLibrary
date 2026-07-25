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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F034DE3-24EF-4D49-9052-E385E19F8D15/libimobiledevice.xcframework.zip", checksum: "8ab30ac8c3c894af7b173c46ea732a01f48989feb4d5893ccbd6448bb7133efa"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F034DE3-24EF-4D49-9052-E385E19F8D15/libimobiledevice_glue.xcframework.zip", checksum: "5c2b3c83fe57fd10c096fea580290f963a20355af922797fb0d14db72e26fa2e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F034DE3-24EF-4D49-9052-E385E19F8D15/libplist.xcframework.zip", checksum: "c0f25621e32e8be66606c8856c0021fa0ed8921a2b6c956eee370406253bced2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F034DE3-24EF-4D49-9052-E385E19F8D15/libtatsu.xcframework.zip", checksum: "6cb89f570d67f31f106c5d5da23b08975cb93f0fbf03e8ab9a8bc7da7756a80a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9F034DE3-24EF-4D49-9052-E385E19F8D15/libusbmuxd.xcframework.zip", checksum: "4e39331fd19287fdb139438f372049834a329d9fadbccfdd0b43a3845feabcb6"),
    ]
)

