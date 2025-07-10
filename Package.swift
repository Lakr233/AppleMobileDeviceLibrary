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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3E7B374D-E1E6-4D14-9BA6-002DFC51EB6B/libimobiledevice.xcframework.zip", checksum: "baa7a738e09f8b23d1ff3ef671d32846ad481ec4ecb2ce63f28321a862aba31a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3E7B374D-E1E6-4D14-9BA6-002DFC51EB6B/libimobiledevice_glue.xcframework.zip", checksum: "7caacab40369432f04d0505295c2f389e0f2d39c8b2afff9d0976405c506e1e9"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3E7B374D-E1E6-4D14-9BA6-002DFC51EB6B/libplist.xcframework.zip", checksum: "6b235da772f2f133f24456df64cbdfc48cf00e77cc70ce47620d6c3ee0a3b603"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3E7B374D-E1E6-4D14-9BA6-002DFC51EB6B/libtatsu.xcframework.zip", checksum: "96a70a5482c1bda05b8df8a2b81dddfe3f07215e83f63f567eea25c143687f0c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3E7B374D-E1E6-4D14-9BA6-002DFC51EB6B/libusbmuxd.xcframework.zip", checksum: "b5e72220d38c4bfecbf7ae4cfeab5e26b6f4e111e66ee4b4cbfcedde68f64486"),
    ]
)

