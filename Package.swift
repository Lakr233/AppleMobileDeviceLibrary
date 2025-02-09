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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3120BA51-B2BA-4C33-A5FB-63CDA572094C/libimobiledevice.xcframework.zip", checksum: "052fd3c19584d1dcb8c276c99b3fae9d38ea067aede9a9bb7f9ef543932d93e8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3120BA51-B2BA-4C33-A5FB-63CDA572094C/libimobiledevice_glue.xcframework.zip", checksum: "cfebf78aed3c9082a799afa0bdace52f23d72674bdaf7034ce95e12c74fedb5d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3120BA51-B2BA-4C33-A5FB-63CDA572094C/libplist.xcframework.zip", checksum: "d0c04d79c2ebd68c9ffc29077b2be75528f3c90429e671c66f14ba2a2b51b936"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3120BA51-B2BA-4C33-A5FB-63CDA572094C/libtatsu.xcframework.zip", checksum: "537a5185b8165494e60e1e66c7e4ab82d3a495e40447c9ae7d0fa28f290388f3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3120BA51-B2BA-4C33-A5FB-63CDA572094C/libusbmuxd.xcframework.zip", checksum: "ce93c0d43d0832143ead8d703b5fec6089ca3898149851aafd5d942ee3907d31"),
    ]
)

