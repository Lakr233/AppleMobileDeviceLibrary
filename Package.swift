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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.212BC194-3058-46E7-8A25-E9FE5693EEAB/libimobiledevice.xcframework.zip", checksum: "1380965ab3bd0667d60eec203c193b644a1f448956554ce3e91b0d253a185de4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.212BC194-3058-46E7-8A25-E9FE5693EEAB/libimobiledevice_glue.xcframework.zip", checksum: "ed7dbff04a189d6657d0e91251fd982fb9233e18d33d365d835b199e5b4a7b0f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.212BC194-3058-46E7-8A25-E9FE5693EEAB/libplist.xcframework.zip", checksum: "2d59c1140f9e789b7fb023ca75c7901a0e98f53371b6a884fad7d42a7a6ce981"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.212BC194-3058-46E7-8A25-E9FE5693EEAB/libtatsu.xcframework.zip", checksum: "8ba7766219edea136945c0dd628a6f8855ce67fe9cb48e80fb75bb6409976383"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.212BC194-3058-46E7-8A25-E9FE5693EEAB/libusbmuxd.xcframework.zip", checksum: "18ee0305d07d1f802ebb60e4ddabc06ffa077e63dac9540629e2a3dcd09a8353"),
    ]
)

