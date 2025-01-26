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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.32D0F985-6418-4CD4-8161-26961B52BCEF/libimobiledevice.xcframework.zip", checksum: "5d0ff09b7b6f5cd518a699938c4ce6376fc191212b361fb4a0967c8255113adb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.32D0F985-6418-4CD4-8161-26961B52BCEF/libimobiledevice_glue.xcframework.zip", checksum: "d2259f92a5d695d62d82850cec9166d72a6344ee93076b1e4168d3ef07801b64"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.32D0F985-6418-4CD4-8161-26961B52BCEF/libplist.xcframework.zip", checksum: "3c78dac1fdd81602de036e86c01f0aabef27416104875ff5a6a10b96e59f4fc6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.32D0F985-6418-4CD4-8161-26961B52BCEF/libtatsu.xcframework.zip", checksum: "c76bca70b399e3b7c73d887730e2d2a281a52c645f2617465dbbb73e2bce0597"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.32D0F985-6418-4CD4-8161-26961B52BCEF/libusbmuxd.xcframework.zip", checksum: "d568c1c20b3d36aa1c8a3584d83b668e677e3b3b0e66625d1d5bc7ba7af989ab"),
    ]
)

