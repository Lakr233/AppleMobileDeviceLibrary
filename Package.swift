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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B5687529-1194-4CDD-988B-F4645B62892C/libimobiledevice.xcframework.zip", checksum: "ea1e40c02d71ef107b32a94284632009eaabd17e0da41fff9d54961232b2b4e8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B5687529-1194-4CDD-988B-F4645B62892C/libimobiledevice_glue.xcframework.zip", checksum: "52a33f9427ee1ff6799aa1688428bb21cc7a83ce398b815a6c805fdda3332989"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B5687529-1194-4CDD-988B-F4645B62892C/libplist.xcframework.zip", checksum: "c66b4ff5e83d069dff9c95138e8af44b784c748cd3187e48e37f86b82e9e1b7e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B5687529-1194-4CDD-988B-F4645B62892C/libtatsu.xcframework.zip", checksum: "5dd48a5754c5afea44c5ff2ecff7e29e9bd98cc382ede9983f32166dd87ea4cb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B5687529-1194-4CDD-988B-F4645B62892C/libusbmuxd.xcframework.zip", checksum: "67aa9cd29b272ea9f1d14a0b5a106193669cf956b499b8781c4c7335df603cd6"),
    ]
)

