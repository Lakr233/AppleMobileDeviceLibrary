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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BF1EE0C-9D1B-43C4-9987-F5B3157A3256/libimobiledevice.xcframework.zip", checksum: "330148258c0578636fb45fe0657bc9435a8ff549d52a7b20e50b1bcf08c9f5b6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BF1EE0C-9D1B-43C4-9987-F5B3157A3256/libimobiledevice_glue.xcframework.zip", checksum: "3560582764fa9c4fcf71e4947ef7f0e13b203ca019992e2ac896f795c3cd8672"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BF1EE0C-9D1B-43C4-9987-F5B3157A3256/libplist.xcframework.zip", checksum: "508901381e395899b8289ca3490cab8b2fde6aab60ae53b1781069ab3cebc795"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BF1EE0C-9D1B-43C4-9987-F5B3157A3256/libtatsu.xcframework.zip", checksum: "f1bdfbc990bb4b649579ef948d55dd74f7652cd5c1c0d027cb6ddd3a5d590114"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BF1EE0C-9D1B-43C4-9987-F5B3157A3256/libusbmuxd.xcframework.zip", checksum: "d8b490f51842781499696af96eccab9f2dce11ca3b924279f4ed238d555a4392"),
    ]
)

