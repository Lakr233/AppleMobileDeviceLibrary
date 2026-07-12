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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.522D373A-A2DD-4C84-A080-1701B0B6F07F/libimobiledevice.xcframework.zip", checksum: "7e6145c3c266a8b272ebe52d39de229e1700157480ef75f56a8209f93767965e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.522D373A-A2DD-4C84-A080-1701B0B6F07F/libimobiledevice_glue.xcframework.zip", checksum: "6981c7d7dfbd6ad40959d1fd98a87aab3838c57c67ada1a93368b00ed04d25a7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.522D373A-A2DD-4C84-A080-1701B0B6F07F/libplist.xcframework.zip", checksum: "2bfbf1b6dc9b176fc1c4f8b36887c8c141380cf534fda6205ea1c1a92d2444f6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.522D373A-A2DD-4C84-A080-1701B0B6F07F/libtatsu.xcframework.zip", checksum: "3a2565efc4ab121c4331111cb89e074e54c7f783f05eaee1267265f1d8e8e9d8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.522D373A-A2DD-4C84-A080-1701B0B6F07F/libusbmuxd.xcframework.zip", checksum: "6d4ac5fcd9ebc54fe982de8d85cfd61965425f45deed6b6de3971fb0451e4f76"),
    ]
)

