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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DAAF3174-756B-4F78-BF62-133F33D1D2E9/libimobiledevice.xcframework.zip", checksum: "38c29daf9f20303f307ddce4a9a37e8250d812d762ff4308115ffcedb5420d80"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DAAF3174-756B-4F78-BF62-133F33D1D2E9/libimobiledevice_glue.xcframework.zip", checksum: "a8e810aee744cb656f4eb6a0cff0c271f27d03086eab184f493fa895c20436a9"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DAAF3174-756B-4F78-BF62-133F33D1D2E9/libplist.xcframework.zip", checksum: "4db3b32a9c8350fdf48c5e182e3fa66609f53ace8dba9809e05c64af84273692"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DAAF3174-756B-4F78-BF62-133F33D1D2E9/libtatsu.xcframework.zip", checksum: "1fd59fe635899648963300b5661517247c6a60436ae734b28c702588378116a2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DAAF3174-756B-4F78-BF62-133F33D1D2E9/libusbmuxd.xcframework.zip", checksum: "a42c823234fc62d5e7f5847c6c5293aafd058bcb09b1b8ce5b6d306b4e76b532"),
    ]
)

