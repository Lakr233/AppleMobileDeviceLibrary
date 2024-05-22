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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4012F543-240B-483F-A907-58106950530F/libimobiledevice.xcframework.zip", checksum: "aa1fd240103f8b333f56aabfca242e9a77abfbdb80769eb2f44cc5327ff0c457"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4012F543-240B-483F-A907-58106950530F/libimobiledevice_glue.xcframework.zip", checksum: "7d74e5ff3f6339ce3cf959211f341bb9e088f31e68ba3c0830b4b2faf3d4ce8b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4012F543-240B-483F-A907-58106950530F/libplist.xcframework.zip", checksum: "d5eb933c199598f00b08f660e306a7e095a8f36b01fc30918c6f5161590df19b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4012F543-240B-483F-A907-58106950530F/libusbmuxd.xcframework.zip", checksum: "63e6e108d5d0af045b2f96028ee47d091e08acd8e57e83bb8f8ca11434b4a106"),
    ]
)

