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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.387CB797-6B07-44B6-8BA4-808F417B80CF/libimobiledevice.xcframework.zip", checksum: "77def1972d6bab85c9845c36e5fccc243552265640bc273e63801deb2ecd0c5e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.387CB797-6B07-44B6-8BA4-808F417B80CF/libimobiledevice_glue.xcframework.zip", checksum: "60e54ed56f69b9726098122d9bda88f27d8f3e6aad996fa5db9ece59a171277b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.387CB797-6B07-44B6-8BA4-808F417B80CF/libplist.xcframework.zip", checksum: "b779617959eabbffca1b2e201ecab95af187185601837c5dec51eba91389c339"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.387CB797-6B07-44B6-8BA4-808F417B80CF/libtatsu.xcframework.zip", checksum: "42f8d2ae534cc2b0fefa323cf5a9bde625360aa2cccf8452dc2ee74a56b0bca9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.387CB797-6B07-44B6-8BA4-808F417B80CF/libusbmuxd.xcframework.zip", checksum: "f668f07f1f3d83ec61d1e3b3a0bf61f4d336cc96f3b19adfa96b1cd88055e3c1"),
    ]
)

