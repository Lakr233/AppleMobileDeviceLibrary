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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9038D95D-A933-46BB-B033-DA172261609D/libimobiledevice.xcframework.zip", checksum: "1ff814cef74e93aa9e94865efff177962907f3f9d83c342afbaa4e60e3e35cf0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9038D95D-A933-46BB-B033-DA172261609D/libimobiledevice_glue.xcframework.zip", checksum: "f9f09f2a1ceb816f4ecc8391eafe0a0143669b4bc6ffd48c147ced95464b0c1b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9038D95D-A933-46BB-B033-DA172261609D/libplist.xcframework.zip", checksum: "29d10eaab94a8cc7d081ab595078942b75673a0dab56144b4b2340a9c7460ea8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9038D95D-A933-46BB-B033-DA172261609D/libtatsu.xcframework.zip", checksum: "eea1cc3eea469412a520851523dd7e93e578c454e35b9d12b15201a166de9bd7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9038D95D-A933-46BB-B033-DA172261609D/libusbmuxd.xcframework.zip", checksum: "2538de57e8859adff832dee0bfb025eee3d07b2e423811ddebb903afb7478c52"),
    ]
)

