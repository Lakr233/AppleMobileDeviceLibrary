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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.141A6DEB-22C4-4755-BA68-6D9003AD326B/libimobiledevice.xcframework.zip", checksum: "6ab9684a87e32d3035db33f4032487d6c393f55a1efc21885a7cc11ce14902b4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.141A6DEB-22C4-4755-BA68-6D9003AD326B/libimobiledevice_glue.xcframework.zip", checksum: "4be12011a3864cef5a47106a9a736722b135efdb429ca5cbc488347ba132f4db"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.141A6DEB-22C4-4755-BA68-6D9003AD326B/libplist.xcframework.zip", checksum: "a5128facd0417db5c235a3bac4f0892abf0ee56138e3b72bd0127b21972d227e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.141A6DEB-22C4-4755-BA68-6D9003AD326B/libtatsu.xcframework.zip", checksum: "e6a09eac3c5b354b0e5641d28387f69e1ffec98098d8484c14b674021533288d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.141A6DEB-22C4-4755-BA68-6D9003AD326B/libusbmuxd.xcframework.zip", checksum: "75a5a628fd8bf8611d9aee7d6dcaa69fa583d12b1d18550e1b64491c1fa42759"),
    ]
)

