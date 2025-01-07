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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4428AC65-7C8D-40B6-84DB-42CA4069EA20/libimobiledevice.xcframework.zip", checksum: "35913e61091f17103f717258ac912e96193dcba7de01bd97cf93e6f826d38020"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4428AC65-7C8D-40B6-84DB-42CA4069EA20/libimobiledevice_glue.xcframework.zip", checksum: "4f7500c776440345a9b8c1f3c076bfa182005d86eb2b1e19c33181dcaf5042d8"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4428AC65-7C8D-40B6-84DB-42CA4069EA20/libplist.xcframework.zip", checksum: "795f87a8c0133a16306f4ce03b14f0c7f46b67b81dd207da9ee6ec0bf42ce729"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4428AC65-7C8D-40B6-84DB-42CA4069EA20/libtatsu.xcframework.zip", checksum: "62a2d87ed652711f07b8cd8315ff14f4f3c5046fb5ef72b95053424ff3bbbbf7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4428AC65-7C8D-40B6-84DB-42CA4069EA20/libusbmuxd.xcframework.zip", checksum: "7e047a39e0a637965046d597982a9694a971cc4ca179d6d01705541401942d49"),
    ]
)

