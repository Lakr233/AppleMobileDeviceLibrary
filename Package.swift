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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A17A4FD1-1D14-4AC8-B500-252D89A3F642/libimobiledevice.xcframework.zip", checksum: "98b748378ecf9000034adcdf7a2d5281f9d08cd142cb7064f1f73d921a52d5af"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A17A4FD1-1D14-4AC8-B500-252D89A3F642/libimobiledevice_glue.xcframework.zip", checksum: "38f3ad736350b8fb5ee84d80de2861446e5693fe392dcf37e15c450ecee47b71"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A17A4FD1-1D14-4AC8-B500-252D89A3F642/libplist.xcframework.zip", checksum: "f676cfd72cd070d5234c74bf62c164a6ad3575c53aa6851e2f354e9e61a0708f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A17A4FD1-1D14-4AC8-B500-252D89A3F642/libtatsu.xcframework.zip", checksum: "565645ce317eaa6701410969aa15290cf21e35d651edf2a06504afd788994348"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A17A4FD1-1D14-4AC8-B500-252D89A3F642/libusbmuxd.xcframework.zip", checksum: "bca82a4dadacc450711b33d08020702d8276d3dcb5d7ce2f1ea5dadc77a3b487"),
    ]
)

