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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA4EE0AB-CD6A-47CB-AE5C-5F6E7FEB5791/libimobiledevice.xcframework.zip", checksum: "5147d2cadeca2b98449e93b72a9f51b6680c4541d0cbc3507dbb9dabb0a63310"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA4EE0AB-CD6A-47CB-AE5C-5F6E7FEB5791/libimobiledevice_glue.xcframework.zip", checksum: "7b0c6c31cef174967e62dc9bb8308310a8829310748a9964a790ae613cb29862"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA4EE0AB-CD6A-47CB-AE5C-5F6E7FEB5791/libplist.xcframework.zip", checksum: "0a117424ab67151447101ffe1c288269de90ba883f3682f53dbc73483dd5480f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA4EE0AB-CD6A-47CB-AE5C-5F6E7FEB5791/libtatsu.xcframework.zip", checksum: "d6fa04991ea2a514ef954b983ec51ac1ba91e42d64fca3a7c793839fbb9b87c5"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA4EE0AB-CD6A-47CB-AE5C-5F6E7FEB5791/libusbmuxd.xcframework.zip", checksum: "37c07406178a23b30852e9283b4fe14a02e722f8b51ee807472fad75a3e75844"),
    ]
)

