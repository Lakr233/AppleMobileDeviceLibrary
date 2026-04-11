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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.83AE137C-204E-44F5-819D-05BA9A18AF95/libimobiledevice.xcframework.zip", checksum: "3fd7cd94e25b7ade3c7f7479ef8a2546848117cc4e39e4a59631914beab6fff6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.83AE137C-204E-44F5-819D-05BA9A18AF95/libimobiledevice_glue.xcframework.zip", checksum: "d09b8d835ed8817ddddc3be78aa443971de3797830187ddb70e36f0a635d0fe4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.83AE137C-204E-44F5-819D-05BA9A18AF95/libplist.xcframework.zip", checksum: "01cb2e78e7c1ccd5129eedd02c572edd134edcc84e9642a279f5541da17ed6db"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.83AE137C-204E-44F5-819D-05BA9A18AF95/libtatsu.xcframework.zip", checksum: "c84731374adfd78f4094ff59ca593cd73f5a951afbe1ae0a93c00a5fe1f23975"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.83AE137C-204E-44F5-819D-05BA9A18AF95/libusbmuxd.xcframework.zip", checksum: "8d1405a26116a1f4e42bf3dc55c854f427af5fe69c242bb9e4d9cd943b125dfb"),
    ]
)

