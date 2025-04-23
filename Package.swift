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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7761D979-91DA-4F50-A26F-ACB0D0AF25B9/libimobiledevice.xcframework.zip", checksum: "6361bbc370ed35879ca0c595be8feb94b032ee615596a64a92bda0a4c791dd71"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7761D979-91DA-4F50-A26F-ACB0D0AF25B9/libimobiledevice_glue.xcframework.zip", checksum: "b5176296507b3e774ce989bfa2d4826623cc14605a98fe4b86123f70a0b1982f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7761D979-91DA-4F50-A26F-ACB0D0AF25B9/libplist.xcframework.zip", checksum: "35ede843448a00a50247af75253c4048419a58da85fb1aa7f472851326875612"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7761D979-91DA-4F50-A26F-ACB0D0AF25B9/libtatsu.xcframework.zip", checksum: "e23a39ff33fd2775523aaaf311c662d6dca9ba491600db779b7915cdbe242a97"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7761D979-91DA-4F50-A26F-ACB0D0AF25B9/libusbmuxd.xcframework.zip", checksum: "a49fa6d813a7305011e8ac6e92d31648aacc5aa3700b19f6cdcad9162781bf38"),
    ]
)

