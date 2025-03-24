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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.53B2C0BF-2EB8-4EDA-AF5C-E4B63B49C38B/libimobiledevice.xcframework.zip", checksum: "0b181a3c42697e7190cc04c59113854fadcbab2e0738a8e34cfe6590109c02a2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.53B2C0BF-2EB8-4EDA-AF5C-E4B63B49C38B/libimobiledevice_glue.xcframework.zip", checksum: "a7baa00d0e7a74daae351331294fa77b9e9cae4c815098406d08b6133b70f71f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.53B2C0BF-2EB8-4EDA-AF5C-E4B63B49C38B/libplist.xcframework.zip", checksum: "3338345d74f06bd9d4e5e877a2c9a49caa2d2c238c07241a5b4896ea4408696d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.53B2C0BF-2EB8-4EDA-AF5C-E4B63B49C38B/libtatsu.xcframework.zip", checksum: "ca0f41886c6ade650a3c450104c4270699db1dec07c3805fc0d4b95460d99bac"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.53B2C0BF-2EB8-4EDA-AF5C-E4B63B49C38B/libusbmuxd.xcframework.zip", checksum: "eaa77774855b24b82468f5790e2b86f810802c90c57d75656a118d53ec11a1b5"),
    ]
)

