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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EEBAF3F8-5532-4DD5-97DE-86D4C75E9D74/libimobiledevice.xcframework.zip", checksum: "9256f4ff97742b4e362160a72acbdbd8a57fd223bc396e18102dd2f833202f63"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EEBAF3F8-5532-4DD5-97DE-86D4C75E9D74/libimobiledevice_glue.xcframework.zip", checksum: "575dabc243113b7086131174da2841b0610bf89cef61f81f8b26ee2464e3669e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EEBAF3F8-5532-4DD5-97DE-86D4C75E9D74/libplist.xcframework.zip", checksum: "f490179bf46606fbed3e75d6e579f40484edd6c8b336d8a21dbc0fcf0398cfb8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EEBAF3F8-5532-4DD5-97DE-86D4C75E9D74/libtatsu.xcframework.zip", checksum: "9e262d88ad83e7b236f7ee0091bc4e7c846d74c074e153aa47afdbe9998697a8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EEBAF3F8-5532-4DD5-97DE-86D4C75E9D74/libusbmuxd.xcframework.zip", checksum: "c47f21c674e8768c7b5777ff5bdc5298ada36e36f17fe4f0ca669564f90e8c15"),
    ]
)

