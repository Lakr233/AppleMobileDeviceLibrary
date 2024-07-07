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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A3B62B97-1582-45FB-A66D-988C915F2DCA/libimobiledevice.xcframework.zip", checksum: "d5e27a50bc5b465693b1b81cc693c9675568a8c8d4e4c2f85b6a29d83f3d2b98"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A3B62B97-1582-45FB-A66D-988C915F2DCA/libimobiledevice_glue.xcframework.zip", checksum: "18841f00ac625d2d6e60774bf34f78bd9e522df698483c0462b0d366585134ee"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A3B62B97-1582-45FB-A66D-988C915F2DCA/libplist.xcframework.zip", checksum: "048bc44ee3b97b7d48a484adb4ba99d4683f26edc8ef708338ec6f4816bbad4c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A3B62B97-1582-45FB-A66D-988C915F2DCA/libtatsu.xcframework.zip", checksum: "600a1b318e523c825702affa808a09acc6aca1275b0577dc44e3a24022af1768"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A3B62B97-1582-45FB-A66D-988C915F2DCA/libusbmuxd.xcframework.zip", checksum: "e69c59a6330c79769a2c2cb01211156c8f7410489e566a86ddfa4ada1f7643f1"),
    ]
)

