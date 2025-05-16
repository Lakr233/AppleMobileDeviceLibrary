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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D1865424-A189-4EAE-B11A-AFD0F9CA01C5/libimobiledevice.xcframework.zip", checksum: "cc6596383c2ca183daadcfded04b7b1e4852a2cdc93feee426238ebceb9da25b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D1865424-A189-4EAE-B11A-AFD0F9CA01C5/libimobiledevice_glue.xcframework.zip", checksum: "a0192862fad03085405f281a0b1eaaeff8e594da101feab9c9881ccf39cc26f2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D1865424-A189-4EAE-B11A-AFD0F9CA01C5/libplist.xcframework.zip", checksum: "4360ae6a1758ef9bd3477d8df5b494f32ee54af51091bc93ccaaa80c33a6a674"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D1865424-A189-4EAE-B11A-AFD0F9CA01C5/libtatsu.xcframework.zip", checksum: "6e92053cd2ae1aab84799c4fb8aefcf52b7da651bcd6bbd297b7f2ccaf66e71c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D1865424-A189-4EAE-B11A-AFD0F9CA01C5/libusbmuxd.xcframework.zip", checksum: "dde7880750e8d2d2454dc03cd8146d8e3346e732ded4e90fd7c53a0077307994"),
    ]
)

