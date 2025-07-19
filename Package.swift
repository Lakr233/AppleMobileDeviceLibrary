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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.02982B15-A216-43C6-A99B-45B92D4B5CEC/libimobiledevice.xcframework.zip", checksum: "f58616d8eef3785029cd4e1d72f968db4af6041060f2056e14dae56becf654f8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.02982B15-A216-43C6-A99B-45B92D4B5CEC/libimobiledevice_glue.xcframework.zip", checksum: "d736aff6e3210be3d731a4dec9e6654c84268aa2b9a23e54deea660ba156e012"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.02982B15-A216-43C6-A99B-45B92D4B5CEC/libplist.xcframework.zip", checksum: "52144b22e9bed2225dd22082c2e72f83f18f79f1adfc11f21f98a0998b67bd7e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.02982B15-A216-43C6-A99B-45B92D4B5CEC/libtatsu.xcframework.zip", checksum: "4ec3ff3317c5667f03575a470c6c62b54e24910d9e6b6891c0a0b2994b28d444"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.02982B15-A216-43C6-A99B-45B92D4B5CEC/libusbmuxd.xcframework.zip", checksum: "36dfac105920053d37866ea4c81a5a5eef13de35fb9963549f3b572ce12f4c65"),
    ]
)

