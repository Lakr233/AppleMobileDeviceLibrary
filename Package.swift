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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7997ADC7-B538-488D-9CAF-1C2E50BA1D99/libimobiledevice.xcframework.zip", checksum: "dd617cbaa92a831f1e9bada20195bc2d426098479c0bc862557b778efbd05984"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7997ADC7-B538-488D-9CAF-1C2E50BA1D99/libimobiledevice_glue.xcframework.zip", checksum: "bb025d6731f255e69ed9baaa9e76ce5e9aa5ec7f33886647a24b70b5cad02be0"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7997ADC7-B538-488D-9CAF-1C2E50BA1D99/libplist.xcframework.zip", checksum: "e8c11e710dd9cbd86352762cef1f0f5aba6b21f77bd082a013f6ddac1c4710bd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7997ADC7-B538-488D-9CAF-1C2E50BA1D99/libtatsu.xcframework.zip", checksum: "b4bbbe53485295e71b6c535d7980a0a41fc0f6a60473b39f3bef9ef21bc3a420"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7997ADC7-B538-488D-9CAF-1C2E50BA1D99/libusbmuxd.xcframework.zip", checksum: "0e63067e935dff8063a10445322b1ba1969824250ee9bd803cbdb29e2bbec8ac"),
    ]
)

