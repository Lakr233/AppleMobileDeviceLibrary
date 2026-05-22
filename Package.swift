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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.12F541CE-47A6-44BC-BA69-739CF556A58C/libimobiledevice.xcframework.zip", checksum: "6fcff65f01548af7e28324b180ed44e18ac2ea3f272bf6bf2ce77540366424b4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.12F541CE-47A6-44BC-BA69-739CF556A58C/libimobiledevice_glue.xcframework.zip", checksum: "830e1ebe15c027b0e723057b30eaae28a97879d10d323ef4eccdcde09a62f127"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.12F541CE-47A6-44BC-BA69-739CF556A58C/libplist.xcframework.zip", checksum: "b65741642396640e1fb21dc97c4e863005558935e31ede5679fb7c32f661c1ca"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.12F541CE-47A6-44BC-BA69-739CF556A58C/libtatsu.xcframework.zip", checksum: "b387f53e108a8b1cc2c0be9a3e015d2faebae88835eb8d1cbaae5f5d3af2fb7a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.12F541CE-47A6-44BC-BA69-739CF556A58C/libusbmuxd.xcframework.zip", checksum: "51f5f45c3a510f21a6a45d17f1cf3cba709c2299b8adf8337e269afe328c02bf"),
    ]
)

