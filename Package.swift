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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BCBFA24-F5BA-40BD-938B-749A244F5BA7/libimobiledevice.xcframework.zip", checksum: "44b307abaa94c2c122875a0d70e74246be8177030f4553c26170c63cdb670aed"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BCBFA24-F5BA-40BD-938B-749A244F5BA7/libimobiledevice_glue.xcframework.zip", checksum: "a85f5c3ca7cc48af9b84d76943a6a2d803b2a92ade8991291f126b3290dce0a2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BCBFA24-F5BA-40BD-938B-749A244F5BA7/libplist.xcframework.zip", checksum: "c5cf592ae342326350933f92af267026c936119f969b802301ce72cf565752d5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BCBFA24-F5BA-40BD-938B-749A244F5BA7/libtatsu.xcframework.zip", checksum: "04349b973c08f0eb5e8d0c1e6b63c99566e9364ac65e66984da12ff7353c67f3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0BCBFA24-F5BA-40BD-938B-749A244F5BA7/libusbmuxd.xcframework.zip", checksum: "6ae7e6733c5a2a77dc51af124956ba2f64140b324b67b679016e0f74edd23ebc"),
    ]
)

