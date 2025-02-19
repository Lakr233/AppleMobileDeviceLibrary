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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A795A582-ED86-43D4-923D-5D713131B13C/libimobiledevice.xcframework.zip", checksum: "d75e1cbe4b93be88a752222817bc0654bc5246d97c63aa2f2e937b5ca694804c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A795A582-ED86-43D4-923D-5D713131B13C/libimobiledevice_glue.xcframework.zip", checksum: "b9c27301918c1fffc0b636407d9899b7fb8ffe8dc9f08bebf73cd5b19c866cd7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A795A582-ED86-43D4-923D-5D713131B13C/libplist.xcframework.zip", checksum: "edba99863a76b3407acad4fd16d81fa628cc457f0729e124f715869b7ff392cf"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A795A582-ED86-43D4-923D-5D713131B13C/libtatsu.xcframework.zip", checksum: "8a366e0670864c49b8df013da522ebc90f2c724c23b3a8f5d8109f1b4cb64c0d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A795A582-ED86-43D4-923D-5D713131B13C/libusbmuxd.xcframework.zip", checksum: "7fa279ebdd95e83b32d0eec870a8181b4707bf08fb7380fb3f3eded81b7a5db6"),
    ]
)

