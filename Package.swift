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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2901527F-64AA-42FD-9C6D-08150B50467E/libimobiledevice.xcframework.zip", checksum: "2abf723612d02e88324bea8066e9db9df07c75e8450536d36b8a699e00d16cb2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2901527F-64AA-42FD-9C6D-08150B50467E/libimobiledevice_glue.xcframework.zip", checksum: "ec6a009d934abe94b68d9a38b7b9728e6def25a08ac9552032062fdc1b8b34b2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2901527F-64AA-42FD-9C6D-08150B50467E/libplist.xcframework.zip", checksum: "9002255b5aeeb016e362031b9196377a750cce1ab57e58ffe31b417e4d047cf0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2901527F-64AA-42FD-9C6D-08150B50467E/libtatsu.xcframework.zip", checksum: "2e213a0b02ff74d091de0bdc46620d51e844f8469a314a6561985ff88ab0efd1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2901527F-64AA-42FD-9C6D-08150B50467E/libusbmuxd.xcframework.zip", checksum: "4a21437c7e7f22d081c937d63684f2db4fbde51531d40ee049b20fe8180cb2d9"),
    ]
)

