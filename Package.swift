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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.74B6E825-4A53-4C7E-8B9B-35CBD3AB95C2/libimobiledevice.xcframework.zip", checksum: "abc03ab2192a150843c94dea6b0a7c09f89f6db9e655bcb3b6f9edbc38366be6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.74B6E825-4A53-4C7E-8B9B-35CBD3AB95C2/libimobiledevice_glue.xcframework.zip", checksum: "1f415e571b44fae7b670757b47d062c2fd8163d1fd7d12b12030fc1bab574da7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.74B6E825-4A53-4C7E-8B9B-35CBD3AB95C2/libplist.xcframework.zip", checksum: "68d3ce698ab2148166943fc522b498cd76f1a07708d48c1a0774358c556711b7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.74B6E825-4A53-4C7E-8B9B-35CBD3AB95C2/libtatsu.xcframework.zip", checksum: "c2ff9cac522ffe5f0572940ba06e4de7e6912a662833e7d641b9bd7980ecc2db"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.74B6E825-4A53-4C7E-8B9B-35CBD3AB95C2/libusbmuxd.xcframework.zip", checksum: "20be75f8c62e997dc7c31076cf7fbf0e1e8b6beed79284b2d02d9e05d491d216"),
    ]
)

