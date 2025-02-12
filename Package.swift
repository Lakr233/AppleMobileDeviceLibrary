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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5CDE2939-D6BC-489E-9860-EEFFFBC31152/libimobiledevice.xcframework.zip", checksum: "27995921fb8e1437a0f9dd3034cfe5b7340ba8a38cb209e4501312b13c2c275d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5CDE2939-D6BC-489E-9860-EEFFFBC31152/libimobiledevice_glue.xcframework.zip", checksum: "ec988fa320c936f1aa49ae78a411f50671eb719e40ed92227d5c99c3bacc6452"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5CDE2939-D6BC-489E-9860-EEFFFBC31152/libplist.xcframework.zip", checksum: "7fc0e364e35b936e6e26bb92cffaab862bc9c6171de7c39f092a2e12f834c433"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5CDE2939-D6BC-489E-9860-EEFFFBC31152/libtatsu.xcframework.zip", checksum: "58a488affd4ee065446882ae3ea6c3d4e230ffa9e16f0d4d4612c686d810c378"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5CDE2939-D6BC-489E-9860-EEFFFBC31152/libusbmuxd.xcframework.zip", checksum: "c8cb156d1894ca3dfba15604ec200547d9e96bbdc55c398bc5c2767c0596bda7"),
    ]
)

