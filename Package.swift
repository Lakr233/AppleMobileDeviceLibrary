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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38528AE8-7586-4462-960C-FC183F8548B1/libimobiledevice.xcframework.zip", checksum: "763d003cc71ca2f2e4392d4a222d3920028c0b9ff50af0e72c31908e66cabdc5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38528AE8-7586-4462-960C-FC183F8548B1/libimobiledevice_glue.xcframework.zip", checksum: "5adba55c7f773e500670324e632736fa2ed22a6ea83ab1d40880214ff543e79c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38528AE8-7586-4462-960C-FC183F8548B1/libplist.xcframework.zip", checksum: "4f278ee93fd2758922b95ba3debd30cba334a05b2a865ca3db6f2099bb210358"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38528AE8-7586-4462-960C-FC183F8548B1/libtatsu.xcframework.zip", checksum: "9e15f8f2047250a1a5b3e463040db4f533da5a6e63840e692198484939c13772"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38528AE8-7586-4462-960C-FC183F8548B1/libusbmuxd.xcframework.zip", checksum: "a11dfe977510f624561c7eae3ffa7841f921058d7e7073e715723b562233ec3a"),
    ]
)

