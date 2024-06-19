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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.102D6398-B2DF-4695-947D-119BAB86008E/libimobiledevice.xcframework.zip", checksum: "adedce8a480057b45997ac7dd5982edab562875207f582955f560732bfbf5224"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.102D6398-B2DF-4695-947D-119BAB86008E/libimobiledevice_glue.xcframework.zip", checksum: "0e653131772089e5a3f614920eafca9b2a578860afc123b3104852cda27ff32d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.102D6398-B2DF-4695-947D-119BAB86008E/libplist.xcframework.zip", checksum: "5e93fff910069bebc469d7d93a1020b1b2e627bf09b6ffdc9ca4ea57fb8c479b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.102D6398-B2DF-4695-947D-119BAB86008E/libusbmuxd.xcframework.zip", checksum: "d8f4dab07edb6caddab95a9aea9001924484e7184568a6fcdbba777cfb4ad00a"),
    ]
)

