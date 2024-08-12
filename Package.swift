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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4B54A9A5-5473-4524-AA9C-89A0F083CF70/libimobiledevice.xcframework.zip", checksum: "3fe12c9362d23207143221f4d463000c23b5711b5913e0371a7227aa9c99c813"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4B54A9A5-5473-4524-AA9C-89A0F083CF70/libimobiledevice_glue.xcframework.zip", checksum: "765ab2de2ae861f5d96687bc43921b0eb8f76cb3ee5defca963444bccf506383"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4B54A9A5-5473-4524-AA9C-89A0F083CF70/libplist.xcframework.zip", checksum: "12ffbbdd46244962b5799fa2d3ecbc8afe84a23621b67724569edc20b36cfc3d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4B54A9A5-5473-4524-AA9C-89A0F083CF70/libtatsu.xcframework.zip", checksum: "b51e479a35b733a603983deeafd4cbba5ca268a41e2a8fc45851dc8f2ad7eee2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4B54A9A5-5473-4524-AA9C-89A0F083CF70/libusbmuxd.xcframework.zip", checksum: "856a1dee8d49d28b27bf6cf549e702d81f9b91bb2d7948b80e7d4c722fc45bbd"),
    ]
)

