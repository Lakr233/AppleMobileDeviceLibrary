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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.67E219A4-243F-4692-91E6-B91F4F4028E0/libimobiledevice.xcframework.zip", checksum: "00694ddd07426280febc8572a46a13c271b72dbb70e8b380dba3e2b8780cca04"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.67E219A4-243F-4692-91E6-B91F4F4028E0/libimobiledevice_glue.xcframework.zip", checksum: "2c9a25e991b770025b0539d8ef43023c83edd0ec0bad48c3f10eaa383f6f92e0"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.67E219A4-243F-4692-91E6-B91F4F4028E0/libplist.xcframework.zip", checksum: "bef79c61021a63e2274c5c1b5d853b00a8fb5cc3c79a7cf4f8ba7759b66d65fc"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.67E219A4-243F-4692-91E6-B91F4F4028E0/libusbmuxd.xcframework.zip", checksum: "8e294ff093a7de2ed059f3702dad318a4a88679b91531ce1143c0265a2bc6d89"),
    ]
)

