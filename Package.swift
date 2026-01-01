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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FDAF3F53-EB7D-41B4-AD3E-ECB36509D543/libimobiledevice.xcframework.zip", checksum: "23d4d24a76e0f5eb81b6b9e1e8a5a799cb10949c6de4407fe446442fa449b357"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FDAF3F53-EB7D-41B4-AD3E-ECB36509D543/libimobiledevice_glue.xcframework.zip", checksum: "24678b43dfcaa45e26caef7f190ba7b202834774494c1e2b3650277b53548373"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FDAF3F53-EB7D-41B4-AD3E-ECB36509D543/libplist.xcframework.zip", checksum: "e3b1ec8fe4a76674353e09c7d6fd2e96e751523c7cbed1ab55f375d88d578a14"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FDAF3F53-EB7D-41B4-AD3E-ECB36509D543/libtatsu.xcframework.zip", checksum: "8810cbf82efb8f96e1a2c5608ef7a03870de7affba01ad8851d2351249ca5393"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FDAF3F53-EB7D-41B4-AD3E-ECB36509D543/libusbmuxd.xcframework.zip", checksum: "6272f2cf1c5cdccab013f9731730754daccf3d551971223554aefc5239344102"),
    ]
)

