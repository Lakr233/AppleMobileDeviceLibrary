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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.04C82F7C-1B98-422C-94F2-97873FBB4381/libimobiledevice.xcframework.zip", checksum: "82ddbfb52093912ab1802fa8b29e9519c8b511ccb619110530e1534cbd024648"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.04C82F7C-1B98-422C-94F2-97873FBB4381/libimobiledevice_glue.xcframework.zip", checksum: "8c8114d21789f77da498c359376521828d283ab95072acb0c062363aacfbf532"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.04C82F7C-1B98-422C-94F2-97873FBB4381/libplist.xcframework.zip", checksum: "0e0cda6979731ca9c597ed69149867017cabde69abc42932b7456d59c7bb40ac"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.04C82F7C-1B98-422C-94F2-97873FBB4381/libtatsu.xcframework.zip", checksum: "504f068c920a811b77a26728d062a39f36c17228711b4620d24511e9a2efab75"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.04C82F7C-1B98-422C-94F2-97873FBB4381/libusbmuxd.xcframework.zip", checksum: "b02ff6f9bc27ef9133da5389b9da4b55458589f6cfd9b40047068cefb2dd07b4"),
    ]
)

