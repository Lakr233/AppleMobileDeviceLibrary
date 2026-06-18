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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6A43DE56-E905-4621-9432-E8EBA86E1C32/libimobiledevice.xcframework.zip", checksum: "33b7019e40a6272fb377db2ddcc6cc708d302552b8969a48e81093e7f73f2a93"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6A43DE56-E905-4621-9432-E8EBA86E1C32/libimobiledevice_glue.xcframework.zip", checksum: "fb3df3202dfc14fb5c6b81ac8810c043d58b04b3b89238170fae2abd5ae961b8"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6A43DE56-E905-4621-9432-E8EBA86E1C32/libplist.xcframework.zip", checksum: "11b80dd71cf27308ee34dbfddd583387b6a3fe59138137baa5779a6ee39e6ff4"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6A43DE56-E905-4621-9432-E8EBA86E1C32/libtatsu.xcframework.zip", checksum: "6cbfc92d70131b56abe211dba7570ba932fe2679c1f67ea36b6de96e97220fe0"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6A43DE56-E905-4621-9432-E8EBA86E1C32/libusbmuxd.xcframework.zip", checksum: "03f908a003ae8a505ce43468c1fe0571c562411335828aa30f8a4ca8d6eefff6"),
    ]
)

