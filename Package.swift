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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.543B1FEF-04B1-4A57-AD28-7FE5B476509D/libimobiledevice.xcframework.zip", checksum: "7582c3acb9d0acf1ede3d26fcf1307be3e8d7b32170a446b43262e1a78e52a89"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.543B1FEF-04B1-4A57-AD28-7FE5B476509D/libimobiledevice_glue.xcframework.zip", checksum: "a417e3e24c96e652c096fa9227dcd66bad06807eb8662ba560ffff88e8f21bf7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.543B1FEF-04B1-4A57-AD28-7FE5B476509D/libplist.xcframework.zip", checksum: "0a0180c7093d2c7ea3a788ee827d74514b1bbf733fe2c669c50f2500957a45d6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.543B1FEF-04B1-4A57-AD28-7FE5B476509D/libtatsu.xcframework.zip", checksum: "2955160aec793f1b3916135c0d1d2e4c863e6c86d573eadc61aa5c9d702b734c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.543B1FEF-04B1-4A57-AD28-7FE5B476509D/libusbmuxd.xcframework.zip", checksum: "f6b485c343b7e00accfce0e76a02139a808862d1bc769282c988c98ea7faf04a"),
    ]
)

