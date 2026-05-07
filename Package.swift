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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.28456125-C8A3-4AD5-84D9-422B902245F5/libimobiledevice.xcframework.zip", checksum: "61f378a5c95f87c0504100ee233d6241981323e23046e3eb87c53fe503df96ef"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.28456125-C8A3-4AD5-84D9-422B902245F5/libimobiledevice_glue.xcframework.zip", checksum: "ab6b599e8855d663a8873996f73a9d56a72518b39dff1fb397df7f6fcf3adf53"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.28456125-C8A3-4AD5-84D9-422B902245F5/libplist.xcframework.zip", checksum: "4ce824b682155517eab41b0ae584e7413dd87880392daf434738b51d39e893ca"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.28456125-C8A3-4AD5-84D9-422B902245F5/libtatsu.xcframework.zip", checksum: "2f8a53d321ec8474416e2f282bc122ce5c3d5f7cf4d8b6c24d87f66416b834cd"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.28456125-C8A3-4AD5-84D9-422B902245F5/libusbmuxd.xcframework.zip", checksum: "880fbaaebf3fe82ffd56070a2ea0cd909d8b7888f7b5496a6c401346e566588c"),
    ]
)

