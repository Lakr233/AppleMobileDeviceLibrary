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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B2463B6D-7B8F-4AE4-9879-5B6FF65878AB/libimobiledevice.xcframework.zip", checksum: "b6cc7904da9687a2e8e245416ee34785362d46d632547db68e1dc5815a59d58c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B2463B6D-7B8F-4AE4-9879-5B6FF65878AB/libimobiledevice_glue.xcframework.zip", checksum: "c50620774eb9433f47ce6d69fce9b045ce1eb8b84b6dd97de53ef7ccf4938d33"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B2463B6D-7B8F-4AE4-9879-5B6FF65878AB/libplist.xcframework.zip", checksum: "7d50692c96d2a39e3439c753057d302d0245c88bd13fc1d3a104e7125542e57d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B2463B6D-7B8F-4AE4-9879-5B6FF65878AB/libtatsu.xcframework.zip", checksum: "4b57cdb9166d3562d601d75994470049a95af73b5b2850fd7dfca12af3b79a7f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B2463B6D-7B8F-4AE4-9879-5B6FF65878AB/libusbmuxd.xcframework.zip", checksum: "5e161c91cd686b44b5603e824a4c9b9da1dfb437d219b2c3b2769235d5138102"),
    ]
)

