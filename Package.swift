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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9EF37B4C-0EB8-4AB2-8E65-DEF3EE685F22/libimobiledevice.xcframework.zip", checksum: "eaf9d03e13c123c579c159ab21357fef35d630c143cc9d36c3cbef85960dbd51"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9EF37B4C-0EB8-4AB2-8E65-DEF3EE685F22/libimobiledevice_glue.xcframework.zip", checksum: "69857fb25fd3478c3fe47c54d737b099953a30226ef3ede0971a7ce1c4e2f567"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9EF37B4C-0EB8-4AB2-8E65-DEF3EE685F22/libplist.xcframework.zip", checksum: "f10d0f2689c884e89924d8f9271040ee27e78ef334450054cdd12b50ee3c4ecd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9EF37B4C-0EB8-4AB2-8E65-DEF3EE685F22/libtatsu.xcframework.zip", checksum: "c9306dfc7b59c24e133a75a7ad01bc12b72d82b330d032a1bdd9b4f3a1988c07"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9EF37B4C-0EB8-4AB2-8E65-DEF3EE685F22/libusbmuxd.xcframework.zip", checksum: "ed9b67498a80219b68655bffe6172b656194913104bf02c05c2623195c928369"),
    ]
)

