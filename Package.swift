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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5E4B9F1A-669D-49D1-A896-4B471C9B8FAB/libimobiledevice.xcframework.zip", checksum: "b4ab1b51c5e15d24e546b7238f913e7f6b653e20ebd09b88f421c31192f01366"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5E4B9F1A-669D-49D1-A896-4B471C9B8FAB/libimobiledevice_glue.xcframework.zip", checksum: "171fc553abf46dd8c1217e2f38fab13a9443b93e36ebe74853a3845e96b784fe"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5E4B9F1A-669D-49D1-A896-4B471C9B8FAB/libplist.xcframework.zip", checksum: "a8e9f4ad1098922ec8f4f164b2e44919dff92753f32efbfed2f2ae083eaf8298"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5E4B9F1A-669D-49D1-A896-4B471C9B8FAB/libtatsu.xcframework.zip", checksum: "98b10a038b30d8b1b2533a00518f990e301404516e7c97303c50eb1cf6c45d6b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5E4B9F1A-669D-49D1-A896-4B471C9B8FAB/libusbmuxd.xcframework.zip", checksum: "42934b37ef72e41d222fef30c4ce9ed847fee6f6569f052969d12d3f90ef3f33"),
    ]
)

