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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2A4D48E4-2A6D-45EC-A290-08EC6781E93C/libimobiledevice.xcframework.zip", checksum: "31c8b4bed2901f2f3dff6ba5d7063ba0d9e2dc79ee26f7d3b9c8cda0493a10d5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2A4D48E4-2A6D-45EC-A290-08EC6781E93C/libimobiledevice_glue.xcframework.zip", checksum: "8d493e44c0a81e922b56620c57f662fc3b49c8e0ed9168c5898c7dc161d05c66"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2A4D48E4-2A6D-45EC-A290-08EC6781E93C/libplist.xcframework.zip", checksum: "47d78e744a6a1306808ae5b7e4e444337117d694d6e70ada6547523f635781fb"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2A4D48E4-2A6D-45EC-A290-08EC6781E93C/libtatsu.xcframework.zip", checksum: "acf6ae7fb9f318436c402b2f13877147c7394187988859640453c13cc22fa3bc"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2A4D48E4-2A6D-45EC-A290-08EC6781E93C/libusbmuxd.xcframework.zip", checksum: "0dd8de86ecf97ef7bce15aa332af304960f76aa3fddd4f613824c8efdf7a8628"),
    ]
)

