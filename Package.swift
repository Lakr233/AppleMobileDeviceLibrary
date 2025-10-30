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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA975CC1-07AB-4470-B618-3A97B82D02DA/libimobiledevice.xcframework.zip", checksum: "2008cf9f1cd44baa9398290df4b648240a40daf4d9bacbac1721cd69c5460219"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA975CC1-07AB-4470-B618-3A97B82D02DA/libimobiledevice_glue.xcframework.zip", checksum: "990a1ace9c8a341d3bbdc482cbcafc9dadf8ede13922192a3df373ba8ff3454d"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA975CC1-07AB-4470-B618-3A97B82D02DA/libplist.xcframework.zip", checksum: "df19ccf52ebe89466a43839e161ed6a101ddab6bf200ee3c50f59fce350fd79d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA975CC1-07AB-4470-B618-3A97B82D02DA/libtatsu.xcframework.zip", checksum: "a4547e3f351f05306c28d177685a2ac45f087c5fe1d6c6650d3257a7134a1fe7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.AA975CC1-07AB-4470-B618-3A97B82D02DA/libusbmuxd.xcframework.zip", checksum: "b1d4ec9ae82b2287731364cbcaa132c4041a7f91e6541ea04f1b4d4f6e144655"),
    ]
)

