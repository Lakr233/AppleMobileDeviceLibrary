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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1EBA1AB7-618A-4FBF-869E-775B21A07165/libimobiledevice.xcframework.zip", checksum: "534fc98ad6cfe6c0d4c97707ddce879610a9e116fd021b210da16c10bac417cd"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1EBA1AB7-618A-4FBF-869E-775B21A07165/libimobiledevice_glue.xcframework.zip", checksum: "f40271e12003c7808aaf039ad1e9705e999143c4def0f729dcd821c1644c9f27"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1EBA1AB7-618A-4FBF-869E-775B21A07165/libplist.xcframework.zip", checksum: "57bbd7c605e15bcca40aca6bbeb128309fd4c16525310d1161116eb1a1d70249"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1EBA1AB7-618A-4FBF-869E-775B21A07165/libtatsu.xcframework.zip", checksum: "5250ccfc93f46c54cb89740e0c5b050346359709381b6442980e77a4a16d815b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1EBA1AB7-618A-4FBF-869E-775B21A07165/libusbmuxd.xcframework.zip", checksum: "88e58c10445d977611e07a63fd14c0efeb00d9f9ce0b3077af1981bc635c651c"),
    ]
)

