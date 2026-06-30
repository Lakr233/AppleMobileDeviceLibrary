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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A97A4CB7-C7F2-4214-9168-331069237397/libimobiledevice.xcframework.zip", checksum: "84dd323bc12a16c06fc996733f05eda7c490bb1397b6d9ff2664c3b60498ec55"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A97A4CB7-C7F2-4214-9168-331069237397/libimobiledevice_glue.xcframework.zip", checksum: "9052457dba50d2d354d9592f02fa11ad7432859b3715d0bbe2c9edf4287413d1"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A97A4CB7-C7F2-4214-9168-331069237397/libplist.xcframework.zip", checksum: "e02d764ce4386bf4ba1e14b14e886510d81c772ca9d8a0ffa828ba11fe09fda0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A97A4CB7-C7F2-4214-9168-331069237397/libtatsu.xcframework.zip", checksum: "eb948e785e35b9faa7b0197183b6bd92195ab4200c5d09179aae4ecb61ae1117"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A97A4CB7-C7F2-4214-9168-331069237397/libusbmuxd.xcframework.zip", checksum: "e6d18d03a715b009cef8f6425494b2505c47de58cf06d2d32022657d407085e9"),
    ]
)

