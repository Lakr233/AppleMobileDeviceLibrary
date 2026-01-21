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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F4351BE-7EAF-49E7-B356-5DD9E930734F/libimobiledevice.xcframework.zip", checksum: "10c4e42869bfe462c8dc8c088a5027f1208d8c41961e08d2dee53b0e3914b816"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F4351BE-7EAF-49E7-B356-5DD9E930734F/libimobiledevice_glue.xcframework.zip", checksum: "9199e20dcea62df3ebce214978f1de9208eeb5991329ddeba7f103b857936e01"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F4351BE-7EAF-49E7-B356-5DD9E930734F/libplist.xcframework.zip", checksum: "fa56b93f04023a4d89bfbe90583571afd95e3be40df3dea58e05cdc70681e442"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F4351BE-7EAF-49E7-B356-5DD9E930734F/libtatsu.xcframework.zip", checksum: "88734b7ec235a2cb7e5b55a4231ea8a58daa8354d99493763ee65df611d32ebc"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3F4351BE-7EAF-49E7-B356-5DD9E930734F/libusbmuxd.xcframework.zip", checksum: "2a0cad931c243c2535b0c04c07c1959b9b6554b698e50ca119040636645cd8e8"),
    ]
)

