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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BA4EE1CD-801A-4D72-83C6-7B1B37F03641/libimobiledevice.xcframework.zip", checksum: "6213d0166e2321f582636b4bb4c5def522a727292f588d2be255487e4a95796c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BA4EE1CD-801A-4D72-83C6-7B1B37F03641/libimobiledevice_glue.xcframework.zip", checksum: "f58a0694728e8cea069d08da87f0e4f5671b80f7bc21ae8e95df1d5e33ecf021"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BA4EE1CD-801A-4D72-83C6-7B1B37F03641/libplist.xcframework.zip", checksum: "572f9b88ae95ede8aa87c1905a92c6a51241cfa3c50c1a1fcb63f178f1de3c64"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BA4EE1CD-801A-4D72-83C6-7B1B37F03641/libtatsu.xcframework.zip", checksum: "553d0f956008da7e52a133701b9e2893848a65bef4a09fabe4a2a80750cb2cda"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BA4EE1CD-801A-4D72-83C6-7B1B37F03641/libusbmuxd.xcframework.zip", checksum: "1d0788726ec09df696a6f2f6d752d14362d78f0cb331773d26bf151d7a5dcad2"),
    ]
)

