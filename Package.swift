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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6006DDB3-6791-4AE2-B3F6-7CDE7E320F2A/libimobiledevice.xcframework.zip", checksum: "1ec40834010d8ea87815611c4cfa524722c561212cffe63e1e903b0bbbd6e6a4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6006DDB3-6791-4AE2-B3F6-7CDE7E320F2A/libimobiledevice_glue.xcframework.zip", checksum: "9e7eb120e5bd2a2cbab975ba32ba1dda44c14e3aeaec1c7b565bc698064c7739"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6006DDB3-6791-4AE2-B3F6-7CDE7E320F2A/libplist.xcframework.zip", checksum: "f67744b0a85c0023ab31d5b4a085e2942064bc842bd05654e7a60f08df02c313"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6006DDB3-6791-4AE2-B3F6-7CDE7E320F2A/libtatsu.xcframework.zip", checksum: "ca18c8b4c4d8867377ca19522e07f6946ae93f774f7559dac665c6805603ad79"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6006DDB3-6791-4AE2-B3F6-7CDE7E320F2A/libusbmuxd.xcframework.zip", checksum: "ff7e6619e8018fb884768ad948ebd7f580e56f72d7dfd71cd88169244f18d5ff"),
    ]
)

