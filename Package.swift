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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BEB0264D-F187-4569-97B3-10D7ACAD86A2/libimobiledevice.xcframework.zip", checksum: "7eb734562a4fa8f0cdd6c29c65e775e89e2b7d99f6e0542c61460c04c580df64"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BEB0264D-F187-4569-97B3-10D7ACAD86A2/libimobiledevice_glue.xcframework.zip", checksum: "2363cc4fa7f24bda9bb29cd7d17bb5b55936d6d6924ba63d0a65d6cc53a0887f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BEB0264D-F187-4569-97B3-10D7ACAD86A2/libplist.xcframework.zip", checksum: "e93aebb8e7fcbac7289a6475aae54ad6b91c0983b5a260b5d4991a04a300de07"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BEB0264D-F187-4569-97B3-10D7ACAD86A2/libtatsu.xcframework.zip", checksum: "126833df4a3222026efe0f6e699358442f4a01dbf325b634a15def526b037901"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.BEB0264D-F187-4569-97B3-10D7ACAD86A2/libusbmuxd.xcframework.zip", checksum: "f4e92bf757f387fd06ad543989f7c2adcc8cbaaaca35598f4a3bc16ef18b5285"),
    ]
)

