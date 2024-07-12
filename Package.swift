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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC122A2E-FD58-45BB-B65A-24ACC9220D2A/libimobiledevice.xcframework.zip", checksum: "2ea4775df92356dcfd36c446801b4f73f15929c9084df75a36183c64bb0983db"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC122A2E-FD58-45BB-B65A-24ACC9220D2A/libimobiledevice_glue.xcframework.zip", checksum: "962eebf0c7a996a2cb74e7781ac4ea7745a24a5c2d0650b933a0532bd0041317"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC122A2E-FD58-45BB-B65A-24ACC9220D2A/libplist.xcframework.zip", checksum: "9f1a465b03b6272526be50b46954c7d77ed6448f252e4b6130c3964c5fdda864"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC122A2E-FD58-45BB-B65A-24ACC9220D2A/libtatsu.xcframework.zip", checksum: "2cee2d0ad6c13b9287a7b5ea07983a2c5c826ebfdbb733f76e35c15acaff3ccd"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EC122A2E-FD58-45BB-B65A-24ACC9220D2A/libusbmuxd.xcframework.zip", checksum: "2fc1118241ab5cf02f7e27ff8ebeda4a7a2e8bb14bf7b51bb55542375cd3b931"),
    ]
)

