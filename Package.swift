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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7289120C-628F-43C4-954B-055514A571A5/libimobiledevice.xcframework.zip", checksum: "2cf1bacbb3c11ca1525abe698281906474515e9bc6c3450a204665c1098e5324"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7289120C-628F-43C4-954B-055514A571A5/libimobiledevice_glue.xcframework.zip", checksum: "3f6a6e14c2209b7f00295e32c8fd7f7018295257bc6a2fe6edb8ac932218f179"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7289120C-628F-43C4-954B-055514A571A5/libplist.xcframework.zip", checksum: "83aa379337cb5e12cdcfa45025d859f15faff505ff29b6bb13dd9868bb4e5fbc"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7289120C-628F-43C4-954B-055514A571A5/libtatsu.xcframework.zip", checksum: "3486f48f0c21ea51d0d896f5ce8f4699ac8a5329814e8a1949f44b7d6934ecbb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.7289120C-628F-43C4-954B-055514A571A5/libusbmuxd.xcframework.zip", checksum: "7e1b2631e2e350e836b6dacf745b5db088796d9a5ea496547a5ea705afe2e775"),
    ]
)

