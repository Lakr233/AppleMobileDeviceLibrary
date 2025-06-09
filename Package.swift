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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E7B04842-841A-4D66-8525-6539AEA617EB/libimobiledevice.xcframework.zip", checksum: "3d0f42292f0b3fb67dfff902b3797806b81d63836a5dad1412101da18bb144df"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E7B04842-841A-4D66-8525-6539AEA617EB/libimobiledevice_glue.xcframework.zip", checksum: "702478d0844d49e53db2959a811ebf54f9b02b67dbea8ed9beea0e06ca95110a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E7B04842-841A-4D66-8525-6539AEA617EB/libplist.xcframework.zip", checksum: "e5553ab4364aa3f18c789d905182bb658b06ba52ebef99565faf2c925f0b437b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E7B04842-841A-4D66-8525-6539AEA617EB/libtatsu.xcframework.zip", checksum: "e8baf69916530b9971f482d42d680272df524383fbd114bd7516a5c145b44807"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E7B04842-841A-4D66-8525-6539AEA617EB/libusbmuxd.xcframework.zip", checksum: "f5a25b04e96427e768c5de4d8e96e02607f5d518042e5c2b1c2a33e125812b00"),
    ]
)

