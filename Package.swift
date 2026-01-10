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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B8EA9831-E470-4A16-9046-6B3F4D7A74D3/libimobiledevice.xcframework.zip", checksum: "167cc907bc8061104ca47fd96644f80a36d4cf605e9f1a1169126e402e9d11a1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B8EA9831-E470-4A16-9046-6B3F4D7A74D3/libimobiledevice_glue.xcframework.zip", checksum: "3b311569be3937918d06d9c845680eab5adc48e292b110cbe5a986c6f12e532b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B8EA9831-E470-4A16-9046-6B3F4D7A74D3/libplist.xcframework.zip", checksum: "fd65f4f116b0f5a62e992dbad438bd3b734de537e2df50a540fd0a42e32e17ae"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B8EA9831-E470-4A16-9046-6B3F4D7A74D3/libtatsu.xcframework.zip", checksum: "7c775606f9690fbdd2a4db5dc5e8fdccbba470fb2471c4a6c609edd082e56733"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B8EA9831-E470-4A16-9046-6B3F4D7A74D3/libusbmuxd.xcframework.zip", checksum: "4e00dd31570770b6141830ec40f0e4de50616978c660f5ab7b794d3f33293ad7"),
    ]
)

