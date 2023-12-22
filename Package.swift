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
    targets: [
        .target(name: "AppleMobileDeviceLibrary", dependencies: [
            "libimobiledevice",
            "libimobiledevice_glue",
            "libplist",
            "libssl",
            "libusbmuxd",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.71E45D95-C1EC-480E-A45E-2CCF7E0395ED/libimobiledevice.xcframework.zip", checksum: "d26318b8a8d60d076f188022e365216ae658e790a241a8db9f9491eaba3d3280"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.71E45D95-C1EC-480E-A45E-2CCF7E0395ED/libimobiledevice_glue.xcframework.zip", checksum: "ce8da9e7b7713ebf33d47af96b79d972072b11bd4fab6155fbe8471594098514"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.71E45D95-C1EC-480E-A45E-2CCF7E0395ED/libplist.xcframework.zip", checksum: "5a9610bfd1e5c25e1e45a0c4c0df79f02963f4a863817eba2ad41b5182b78e70"),
        .binaryTarget(name: "libssl", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.71E45D95-C1EC-480E-A45E-2CCF7E0395ED/libssl.xcframework.zip", checksum: "401c45dd875db99793ed00c7028e6f97c137c54e4205a7841c8ce94fae7f518a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.71E45D95-C1EC-480E-A45E-2CCF7E0395ED/libusbmuxd.xcframework.zip", checksum: "faaebf65e5b6cde287b62ce198f58ce0b89cc705f98b29462df3192870bd4ecb"),
    ]
)
