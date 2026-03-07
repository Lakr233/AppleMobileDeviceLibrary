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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A4366223-FD94-4C81-B65B-27F7F6B14FDD/libimobiledevice.xcframework.zip", checksum: "7a310a60ca622e371e6020e349fe7ef29d7536c91170d968757160373b8482f0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A4366223-FD94-4C81-B65B-27F7F6B14FDD/libimobiledevice_glue.xcframework.zip", checksum: "6dbb41b5006b1d5b5affea2545950ab47557a52b0d5baac8cab74ec865238e8b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A4366223-FD94-4C81-B65B-27F7F6B14FDD/libplist.xcframework.zip", checksum: "6158030f34b2c886ec09d5c2235d17d8ee73583812e3fc8e9b2226818b92b6ca"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A4366223-FD94-4C81-B65B-27F7F6B14FDD/libtatsu.xcframework.zip", checksum: "ddfd97c9d6983854288a9ed1849c9742bef20afa919ad89dea3ecf789acf5b07"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A4366223-FD94-4C81-B65B-27F7F6B14FDD/libusbmuxd.xcframework.zip", checksum: "b175323fee20b4b710b7b8d68d932cf660ce1c386415f3a42dfaa779eb2a6ff8"),
    ]
)

