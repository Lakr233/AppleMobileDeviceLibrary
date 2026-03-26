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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D45F83FA-3C8E-46FB-8415-9DBEF4073C13/libimobiledevice.xcframework.zip", checksum: "140ef38fc017eb1037f466e4155732b983b9f187ec34ab40856335f252a9c97e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D45F83FA-3C8E-46FB-8415-9DBEF4073C13/libimobiledevice_glue.xcframework.zip", checksum: "e6fc214266886adf2ab931a544817d4ad7d70de515b6d80926999717a6dde457"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D45F83FA-3C8E-46FB-8415-9DBEF4073C13/libplist.xcframework.zip", checksum: "d8cd912a9fc087cdc2fb8fbd95bbe48bdd7c2697d1006edf23b4259bc7ab954f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D45F83FA-3C8E-46FB-8415-9DBEF4073C13/libtatsu.xcframework.zip", checksum: "91d6db5925cba04e96b810f1c00d98f5a80d92836f3bd6c2d4065e88169aaab7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D45F83FA-3C8E-46FB-8415-9DBEF4073C13/libusbmuxd.xcframework.zip", checksum: "17f77fbb0c2abaca9318085d229eef4b59c91782369b63cf677188c611bcb2c8"),
    ]
)

