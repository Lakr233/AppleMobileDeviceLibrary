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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8F72B40A-1A61-43FD-AB75-EC063AA48E71/libimobiledevice.xcframework.zip", checksum: "c112c6152d1242fedae5deb59b10cd7452257d637679a5f14280dafe48b30971"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8F72B40A-1A61-43FD-AB75-EC063AA48E71/libimobiledevice_glue.xcframework.zip", checksum: "af82570d93c5d4b3d62a025160e7952538eafa3f4431162042f117ccce1e5f3d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8F72B40A-1A61-43FD-AB75-EC063AA48E71/libplist.xcframework.zip", checksum: "ee0702eaa911b848553df677dd04787c59b6b2670e3c66e4cb3a9b175730f961"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8F72B40A-1A61-43FD-AB75-EC063AA48E71/libtatsu.xcframework.zip", checksum: "d1ce0644f7cb71d4cb8a2ae9b18b332e3bf6200c58b672b68eb96944d1c7b142"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8F72B40A-1A61-43FD-AB75-EC063AA48E71/libusbmuxd.xcframework.zip", checksum: "246c78cb1c6fd5f09726d42d1c57171a4c46a528e8ebb7a02e2af0c0220da5cd"),
    ]
)

