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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.06E5A834-D79E-45A1-9AAF-F527CE90D4A8/libimobiledevice.xcframework.zip", checksum: "a093be4bf0570dae69d44116f804f0612506b70585b6ec6bdce8ba5d88b6c6d1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.06E5A834-D79E-45A1-9AAF-F527CE90D4A8/libimobiledevice_glue.xcframework.zip", checksum: "dee4ed7850c80ae8c0844794d3a493e1864c154a26f064bc4919de687547ca86"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.06E5A834-D79E-45A1-9AAF-F527CE90D4A8/libplist.xcframework.zip", checksum: "3edced0521c8cb07346b11597484efb0d12bf589986011ec1cf5dbec2b428a15"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.06E5A834-D79E-45A1-9AAF-F527CE90D4A8/libusbmuxd.xcframework.zip", checksum: "38cb69627d816db64d907991558df3de4bb17c415a61bc4bc6e7396b6131a9b9"),
    ]
)

