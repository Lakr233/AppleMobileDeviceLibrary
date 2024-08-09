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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.96BA6E3A-6810-47B3-8C02-3675DA5373CE/libimobiledevice.xcframework.zip", checksum: "a9706e8dfe8d00bf64baa7f8612dcd0e431b4b6b2e59922df6ab1497ce891397"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.96BA6E3A-6810-47B3-8C02-3675DA5373CE/libimobiledevice_glue.xcframework.zip", checksum: "31dd9d88509812e2321fa861966a6912137f6940c35454a8782324b550326452"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.96BA6E3A-6810-47B3-8C02-3675DA5373CE/libplist.xcframework.zip", checksum: "8ea5af6d60c310a0ca064d8ee332924fe3954578c1e8375d19aab5b92169eb75"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.96BA6E3A-6810-47B3-8C02-3675DA5373CE/libtatsu.xcframework.zip", checksum: "f0d544f278888ad8e214e05f20ec91cc487763d70c4a996796dc7b8fd432d781"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.96BA6E3A-6810-47B3-8C02-3675DA5373CE/libusbmuxd.xcframework.zip", checksum: "71b29e2076a01c6a3c688ad4e49c90de3518756ccee312dc222199d41861b29d"),
    ]
)

