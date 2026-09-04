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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9364A683-5A35-4CAE-9AF9-1DF199317832/libimobiledevice.xcframework.zip", checksum: "b2e03ea7ee7e03e9548b4bd697cf7629433d6743bd20c9ee7bd0a141944b617e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9364A683-5A35-4CAE-9AF9-1DF199317832/libimobiledevice_glue.xcframework.zip", checksum: "8e1d7fccd24b60f68e0f63d7f40e2034755775826ba495ca7bcac16670db6c4a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9364A683-5A35-4CAE-9AF9-1DF199317832/libplist.xcframework.zip", checksum: "c2710fc5bb224fbbe27954105310b1c1dcb703012a0903efb7063584a23743ad"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9364A683-5A35-4CAE-9AF9-1DF199317832/libtatsu.xcframework.zip", checksum: "445fa4dc4ca8151edaa346fec0a7ccef492a1982321deffe12828d7648ebdb27"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9364A683-5A35-4CAE-9AF9-1DF199317832/libusbmuxd.xcframework.zip", checksum: "0e565408903b5a8acd4ba526f1e96553ab0271d30128e36bb95fff2cd9521c76"),
    ]
)

