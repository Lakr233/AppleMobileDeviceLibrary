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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E071E1FF-06D1-418E-97D9-A6155316A5DC/libimobiledevice.xcframework.zip", checksum: "4858d2d9adee693b144ca8566a0fe27446b4e3dce29cf3d465a6e33b740bb2f8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E071E1FF-06D1-418E-97D9-A6155316A5DC/libimobiledevice_glue.xcframework.zip", checksum: "ff533dd7db8c0fb98d17f431812cb42375a29ffd99cc1b001aebdd589ac2e341"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E071E1FF-06D1-418E-97D9-A6155316A5DC/libplist.xcframework.zip", checksum: "608e031faa220bec1b672a5dec430d2e07ebc923dae10a33221c2064ec3862e6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E071E1FF-06D1-418E-97D9-A6155316A5DC/libtatsu.xcframework.zip", checksum: "32876b8b6dd23913c0319a664d4b1128a77c723b00476bf8d66047cbe9c53859"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E071E1FF-06D1-418E-97D9-A6155316A5DC/libusbmuxd.xcframework.zip", checksum: "abf54ae1879a643e7437a9f89b8f24ab0d782196e4b166cbd0d4e8e5a88ebb9c"),
    ]
)

