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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2AACC63F-5942-4E64-9B67-6AC9356076C8/libimobiledevice.xcframework.zip", checksum: "9efea12cacd5f75187db9c9a17c4a50978f60e4c5a92611788978b1d620210c3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2AACC63F-5942-4E64-9B67-6AC9356076C8/libimobiledevice_glue.xcframework.zip", checksum: "fe6e2de8cc09c0e3b39758566d32ffff5d12eb7de667fc69f3918b35f2abe0ca"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2AACC63F-5942-4E64-9B67-6AC9356076C8/libplist.xcframework.zip", checksum: "9093a947c290dd946cfb9a4c32ce696cc101aef91851d256839ceeb04af29b53"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2AACC63F-5942-4E64-9B67-6AC9356076C8/libtatsu.xcframework.zip", checksum: "c5986ce505f6740c058672fff5f29112011ca2a169c19f47747a137defbb0e0e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2AACC63F-5942-4E64-9B67-6AC9356076C8/libusbmuxd.xcframework.zip", checksum: "52abaf472e50a12a61db7949c5e6f2aa7d060ef89b642e3bab3dd7e561fb6430"),
    ]
)

