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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C1CE35F0-C7A9-4EB5-954F-ACA783FF8919/libimobiledevice.xcframework.zip", checksum: "36f3f98a0d9e7b0a67fefb891ed896b92d1ade1463887db29c0bfa18c5c5631d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C1CE35F0-C7A9-4EB5-954F-ACA783FF8919/libimobiledevice_glue.xcframework.zip", checksum: "1be69c133ef2fdd6379abf11ebfe36b450be276abefe8a8280a4de21f328300c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C1CE35F0-C7A9-4EB5-954F-ACA783FF8919/libplist.xcframework.zip", checksum: "b6ee042f2ab28551970a4dd96a14fa34cbd3094af4eb54e9455a7ecb2fa4f833"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C1CE35F0-C7A9-4EB5-954F-ACA783FF8919/libtatsu.xcframework.zip", checksum: "137934137c41e80f378e41af9e6cfb864513674d47e8381a392e6132e3622e91"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C1CE35F0-C7A9-4EB5-954F-ACA783FF8919/libusbmuxd.xcframework.zip", checksum: "d537e82a86f6608029478e68633b4332ae94923f3634bb22d567c4d21eda751a"),
    ]
)

