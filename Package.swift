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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A86DD5BD-AF14-45BC-B761-76E411C846A6/libimobiledevice.xcframework.zip", checksum: "c16f7e1891bae2c187c1e17d340557eb4bf80d9f9465ffc1f8fd15e0e042691c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A86DD5BD-AF14-45BC-B761-76E411C846A6/libimobiledevice_glue.xcframework.zip", checksum: "946a9625a8b3a45128a0274d08345a66ce8ccc245abb88423d5f878922d9c239"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A86DD5BD-AF14-45BC-B761-76E411C846A6/libplist.xcframework.zip", checksum: "7e2f997fd799560bf74d06a70044688c447bbc07ac09a77bd49f8debfc4427a0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A86DD5BD-AF14-45BC-B761-76E411C846A6/libtatsu.xcframework.zip", checksum: "ac446f12ce7384c45545770302fe747742f068eb44f4312f301b70e4fe3a8d75"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A86DD5BD-AF14-45BC-B761-76E411C846A6/libusbmuxd.xcframework.zip", checksum: "3a4016ee15e30fbeb957739ea74a3b5c8137fa1f51d41b9a61f8d64c38e160e3"),
    ]
)

