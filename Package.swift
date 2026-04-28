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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.150268A7-58C5-455A-ADC1-696EAC75DC91/libimobiledevice.xcframework.zip", checksum: "625a0a396dd6ff75e6b859da93ebbff5b9993fbd34ff0bbe8e1fa7ccab278bce"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.150268A7-58C5-455A-ADC1-696EAC75DC91/libimobiledevice_glue.xcframework.zip", checksum: "e7b107c92e3d3fd58c87a48e7d9df777ab3460a24e3ca360caf2f0ffa1e5c750"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.150268A7-58C5-455A-ADC1-696EAC75DC91/libplist.xcframework.zip", checksum: "9235eb0432ddf09f30cdfe742d47682f0c2581c91d5d798fe091deb609e290d3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.150268A7-58C5-455A-ADC1-696EAC75DC91/libtatsu.xcframework.zip", checksum: "69d83cb68b2d1cfb9ab03bd75483d200d30d28c9d041ec602c3b943a9336a60f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.150268A7-58C5-455A-ADC1-696EAC75DC91/libusbmuxd.xcframework.zip", checksum: "3beba358ab2b3290ed2bbb2fac772bcfe39bd5292697c6286a7479ac3a89e789"),
    ]
)

