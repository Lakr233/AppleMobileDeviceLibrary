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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.80BE00EA-C45C-4BBD-8F84-5ECF6EF54BC4/libimobiledevice.xcframework.zip", checksum: "57b0d796f00a635a93891db7fe474588ad4570eb197215b0c6bfee6b27792a4a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.80BE00EA-C45C-4BBD-8F84-5ECF6EF54BC4/libimobiledevice_glue.xcframework.zip", checksum: "bc1245bdd0b91aff86ed59dfeeda3469f52a4f050843fb1edbee42b537903ba4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.80BE00EA-C45C-4BBD-8F84-5ECF6EF54BC4/libplist.xcframework.zip", checksum: "1cc671d76493c85dc3eecb3b848632f1c59ade6a328592977091a5d54fb7264a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.80BE00EA-C45C-4BBD-8F84-5ECF6EF54BC4/libtatsu.xcframework.zip", checksum: "6b55ebf268276e1f5629596d2706fbca95e2472933a68d686bf905f4cddda5e2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.80BE00EA-C45C-4BBD-8F84-5ECF6EF54BC4/libusbmuxd.xcframework.zip", checksum: "bdaec5e7566d2660d984647fe5273a3c7927f59cdf9fdd1c16e87bee2ed9bbb9"),
    ]
)

