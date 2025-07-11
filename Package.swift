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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4ECEE517-F219-4567-AEEA-1F1AEE084DE2/libimobiledevice.xcframework.zip", checksum: "c3b960e164b3fd747db4a7a561e76dd2f979e5491e225686171c49c8095e8b95"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4ECEE517-F219-4567-AEEA-1F1AEE084DE2/libimobiledevice_glue.xcframework.zip", checksum: "895e577fd784b74918eebd64e95b7f0be16c9bff5f9713068a54816a8c8256b7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4ECEE517-F219-4567-AEEA-1F1AEE084DE2/libplist.xcframework.zip", checksum: "1766f044cbee7e3807ee33b1625396967337d668e5aa861fc568dfd36ebed0fc"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4ECEE517-F219-4567-AEEA-1F1AEE084DE2/libtatsu.xcframework.zip", checksum: "9a0b32e2242cd1c9b2e328ab931b2905b4159b9fa4632ca3d63eae659fc70570"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4ECEE517-F219-4567-AEEA-1F1AEE084DE2/libusbmuxd.xcframework.zip", checksum: "1e4dab7b6cc6c88a1cb69886cb1367ce39497875ee3001a494cba02beab4a90c"),
    ]
)

