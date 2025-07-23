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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8920232C-7DF3-47FD-B6B9-3F487694F96B/libimobiledevice.xcframework.zip", checksum: "de4a469e532e2974d5c607e86354a3aee6489d3929fd061401d065e359d36c35"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8920232C-7DF3-47FD-B6B9-3F487694F96B/libimobiledevice_glue.xcframework.zip", checksum: "3cc83c42dbcdc0e0ff68eed0cc96a204ed4e1eb42aba42c462962c556feb69da"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8920232C-7DF3-47FD-B6B9-3F487694F96B/libplist.xcframework.zip", checksum: "cd89ff82b6c629181583e15145d41a251ec8b39c85834bf873f6cbe2ddffc560"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8920232C-7DF3-47FD-B6B9-3F487694F96B/libtatsu.xcframework.zip", checksum: "fef68627a24e622a6e7dadcb187b9ee606f6c2549dc8c88eec1656c285a9a1eb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8920232C-7DF3-47FD-B6B9-3F487694F96B/libusbmuxd.xcframework.zip", checksum: "72f54eddb00736147d6abf971b6b671d0c4066885105fef6be2fcde85d61f11d"),
    ]
)

