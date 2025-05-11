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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.37260662-8163-4AA8-8099-248AE80F6F2E/libimobiledevice.xcframework.zip", checksum: "510145a687a23859e3e4994c14b1dc550a31a4e117afdb1d2acf9b7555d213e4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.37260662-8163-4AA8-8099-248AE80F6F2E/libimobiledevice_glue.xcframework.zip", checksum: "827fc98f7948c7c8cbbf5bb9c8e3677e530c778c8f5324d555084fbc4e02fcda"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.37260662-8163-4AA8-8099-248AE80F6F2E/libplist.xcframework.zip", checksum: "2203f25648b4657758c2c5d54c724c6cb2efe56a2f890a940eeac242db7f6e14"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.37260662-8163-4AA8-8099-248AE80F6F2E/libtatsu.xcframework.zip", checksum: "84f856fc1ecf6254d548fa29b6164375265331f9368918ba505ef6c0ca2d72ab"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.37260662-8163-4AA8-8099-248AE80F6F2E/libusbmuxd.xcframework.zip", checksum: "2646842f504f0b677e7d651983d6fa934d476370461789115b0a2fb6297b1686"),
    ]
)

