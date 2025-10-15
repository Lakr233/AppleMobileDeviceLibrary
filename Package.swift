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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.782E00E2-DE35-4299-B284-72BD10007742/libimobiledevice.xcframework.zip", checksum: "44be908dbd6c0a5325d7fa5cf51e2deec9cf5948c1a7427033d680c0ac559fb6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.782E00E2-DE35-4299-B284-72BD10007742/libimobiledevice_glue.xcframework.zip", checksum: "05f46859e73956643387006758b1539a77c8a8ad859e05af96d0058425d5fd64"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.782E00E2-DE35-4299-B284-72BD10007742/libplist.xcframework.zip", checksum: "2f2ef3918b1392a500964fc1575b9925179c55d43ec3106cc0f971107cbaba24"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.782E00E2-DE35-4299-B284-72BD10007742/libtatsu.xcframework.zip", checksum: "eb18ad6457b7b87a66a340923e745743b971b8046d9777f17bb69f760fb55d2e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.782E00E2-DE35-4299-B284-72BD10007742/libusbmuxd.xcframework.zip", checksum: "ec9ab1300ecafa117654d1175ba4a940837524707fd8792abaf91c04a7b9a717"),
    ]
)

