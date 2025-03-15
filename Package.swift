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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.92F45055-8867-4C46-B72F-B54B2AF4B3E6/libimobiledevice.xcframework.zip", checksum: "ba0901daea87e25280f76183c9f636bca10322d2afd7196b37309db0b122e19e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.92F45055-8867-4C46-B72F-B54B2AF4B3E6/libimobiledevice_glue.xcframework.zip", checksum: "69c7d7cb25966fceba0196d5764b6315d315fea2b95b62eeb9877549d9f899ef"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.92F45055-8867-4C46-B72F-B54B2AF4B3E6/libplist.xcframework.zip", checksum: "f00365013af788dce4be82a9cc528d8d07a54fce979b02ec4fcc7fccc5e2da6b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.92F45055-8867-4C46-B72F-B54B2AF4B3E6/libtatsu.xcframework.zip", checksum: "75f6f5849bf10298a5635fc68213c76b41738c54e5954ed9ec597c93a82d3b06"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.92F45055-8867-4C46-B72F-B54B2AF4B3E6/libusbmuxd.xcframework.zip", checksum: "65cf27373bd42f7815d2baaa1d785644fce3d432efcb51cd28eb4a8146cf3fdd"),
    ]
)

