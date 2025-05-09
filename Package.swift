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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.70B63A52-F5CF-4C63-82D1-55A8A3E3B845/libimobiledevice.xcframework.zip", checksum: "f9166b19b33aed8c04ac5887d7c4399ecd329fb1b54cd8a2bfb5ba3f7a360432"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.70B63A52-F5CF-4C63-82D1-55A8A3E3B845/libimobiledevice_glue.xcframework.zip", checksum: "9d331717ca86de24e36f33eee744c05a8403f1b076827d4ae7be73979f4e3a87"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.70B63A52-F5CF-4C63-82D1-55A8A3E3B845/libplist.xcframework.zip", checksum: "26628b4b7bbfd365bd9666af525b03202d2bb0e281e3ef9fd979caf0847057c9"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.70B63A52-F5CF-4C63-82D1-55A8A3E3B845/libtatsu.xcframework.zip", checksum: "6eb66740e0e323aba92fae30be69a92d787227ef34af7e163724bd99b32ab0d6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.70B63A52-F5CF-4C63-82D1-55A8A3E3B845/libusbmuxd.xcframework.zip", checksum: "808297e662ccb7513777c4f358f48895cef03968f31dd1d65277baf7be3552b9"),
    ]
)

