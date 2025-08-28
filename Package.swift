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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B7EFB157-8799-4D83-B287-A979906184EB/libimobiledevice.xcframework.zip", checksum: "51270df8bfdfa0907a81139718029ebe9641dc3cae61d6218f6ed5f3b234fb48"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B7EFB157-8799-4D83-B287-A979906184EB/libimobiledevice_glue.xcframework.zip", checksum: "2d37ad4ba359dc78382b0351b3574d6c18add6d32be3a235141e364f10eef571"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B7EFB157-8799-4D83-B287-A979906184EB/libplist.xcframework.zip", checksum: "2b989744663777971120bd8058be11fe092f7cf3b43a9ebac5b6be79e27d5a8a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B7EFB157-8799-4D83-B287-A979906184EB/libtatsu.xcframework.zip", checksum: "894f0cc1036e032a4ef176299dbc1289b7a896b8a4d1b73210abee2db67f9f95"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B7EFB157-8799-4D83-B287-A979906184EB/libusbmuxd.xcframework.zip", checksum: "b97a1ae35763f5867c03f9677f1e348676b40051c38a24ce34521bd894ea9122"),
    ]
)

