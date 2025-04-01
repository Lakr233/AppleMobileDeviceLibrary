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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.14CE62C8-FD4E-48C8-8A8F-E48DF858446F/libimobiledevice.xcframework.zip", checksum: "79734fc42a505d2b825d0428f9fcbc4f1130290b78a7740155a04543858e779e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.14CE62C8-FD4E-48C8-8A8F-E48DF858446F/libimobiledevice_glue.xcframework.zip", checksum: "45bde10f15d5c1733f810ee0b9266d8f3f9575cf788dee33a9b9b38baac8426f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.14CE62C8-FD4E-48C8-8A8F-E48DF858446F/libplist.xcframework.zip", checksum: "f1ac68cd1c895bcb0068351a860e59893dfd67d3a1cd7b5527af403c75336e8c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.14CE62C8-FD4E-48C8-8A8F-E48DF858446F/libtatsu.xcframework.zip", checksum: "4db8f3dafa88c57216d682e00b21edc19b14baa6f730d858eab90793b3222f15"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.14CE62C8-FD4E-48C8-8A8F-E48DF858446F/libusbmuxd.xcframework.zip", checksum: "3b609f678115776442d1b404b6a477a04fd17ec721549924bea8ca61fd7d6335"),
    ]
)

