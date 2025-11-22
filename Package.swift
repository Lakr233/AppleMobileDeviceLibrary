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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A461D82E-CEA7-4DA8-811B-666CCB3E4779/libimobiledevice.xcframework.zip", checksum: "a279908fd28f4b67cafc889cc5b1b270cff9dd8c16da2d5b06df2c8669973d97"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A461D82E-CEA7-4DA8-811B-666CCB3E4779/libimobiledevice_glue.xcframework.zip", checksum: "123c3122e13d65fb035d71896031e878a8cc0a880d958c341c7d0d407dd22b4c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A461D82E-CEA7-4DA8-811B-666CCB3E4779/libplist.xcframework.zip", checksum: "e729e451f807d93206a9d2407691ad06eba70f6036fbe2f440485c1f2d13e095"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A461D82E-CEA7-4DA8-811B-666CCB3E4779/libtatsu.xcframework.zip", checksum: "a538f1e2dfd9ff998865d91a86c858a2bf09ef4233fe5538dd17b8b1d0adf217"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A461D82E-CEA7-4DA8-811B-666CCB3E4779/libusbmuxd.xcframework.zip", checksum: "8aa38dd4386a0718f7fb0716dde18859f88c9be1b2aa8d82e9e1d7e4626d2d7b"),
    ]
)

