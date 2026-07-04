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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9D6043E8-BCB6-4572-BBE4-C6A52B4D1D78/libimobiledevice.xcframework.zip", checksum: "d53ce272351f053f019669a18bbd252fa28e4fa7aa7e98c055285da29f4821ad"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9D6043E8-BCB6-4572-BBE4-C6A52B4D1D78/libimobiledevice_glue.xcframework.zip", checksum: "8c4870b31d69b735ef55b7b73e0ee1c3d260f388cf9588d945d88d35578da098"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9D6043E8-BCB6-4572-BBE4-C6A52B4D1D78/libplist.xcframework.zip", checksum: "c5f805d59b9155b9870ec082500abf003dff87237e6d6cbbb2b28c8e422fdf88"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9D6043E8-BCB6-4572-BBE4-C6A52B4D1D78/libtatsu.xcframework.zip", checksum: "88b7c70d051a5fcd8641f95f53e44afa7175bf4d1e95caa365f22856c854a644"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9D6043E8-BCB6-4572-BBE4-C6A52B4D1D78/libusbmuxd.xcframework.zip", checksum: "418c8ea12e6916673b8f13f5e2e9b45d2cbf01b03c42e389e1883db998572986"),
    ]
)

