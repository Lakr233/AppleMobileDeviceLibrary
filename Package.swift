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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2F91676D-1D7C-4B02-A6B0-F0EE3ABDD386/libimobiledevice.xcframework.zip", checksum: "9a9b2d6123c5d9ff5f52c7498a4628a49829b255f63cb3c57bbddd3d8b0d9af8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2F91676D-1D7C-4B02-A6B0-F0EE3ABDD386/libimobiledevice_glue.xcframework.zip", checksum: "bfc433ff9d3f2a67e21295c6b8ce6b5ac6aa6ec52161ed43cfa81f23ad824eeb"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2F91676D-1D7C-4B02-A6B0-F0EE3ABDD386/libplist.xcframework.zip", checksum: "0e9a460d56b5efa3d84e32c3c694ebcd9f8018d9968a5a1d46ed89053dffe6a7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2F91676D-1D7C-4B02-A6B0-F0EE3ABDD386/libtatsu.xcframework.zip", checksum: "cddacf9a0dee8e02deeaa380469366d5041a078bf260d845419e40cbf9b62fb4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2F91676D-1D7C-4B02-A6B0-F0EE3ABDD386/libusbmuxd.xcframework.zip", checksum: "a89f916303d499d360e30d4fa1990214044e8b79aa41f70f8d3313e7902b6ee5"),
    ]
)

