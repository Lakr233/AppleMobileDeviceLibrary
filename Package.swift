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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.281CE06E-FCB1-4D94-BE87-9D6D0902A323/libimobiledevice.xcframework.zip", checksum: "465536f074c0c89814d7831337d3306a75df29b7a30f57b4ec96ca8d67e3e385"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.281CE06E-FCB1-4D94-BE87-9D6D0902A323/libimobiledevice_glue.xcframework.zip", checksum: "dc14e82d1427f4d9bf6be7ee04786eb04fda1942c12b52e46462cb1a1d5da94b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.281CE06E-FCB1-4D94-BE87-9D6D0902A323/libplist.xcframework.zip", checksum: "09277a81ec701b0a0cddd5fed9acb3066350d896080349f71d91c1fbb65d2ef3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.281CE06E-FCB1-4D94-BE87-9D6D0902A323/libtatsu.xcframework.zip", checksum: "8355448d55fae34e3dd74f1d30bc8625be413b3759b8ecaff7164b4435159c49"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.281CE06E-FCB1-4D94-BE87-9D6D0902A323/libusbmuxd.xcframework.zip", checksum: "1da68f483a3351bebb3f4c8b6b9b35274ffcf2fe344416e3b0904dc45f3f2a37"),
    ]
)

