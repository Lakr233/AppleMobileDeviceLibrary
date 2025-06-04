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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.802C7C52-7B0F-48E1-87CE-0125AEFCB3F9/libimobiledevice.xcframework.zip", checksum: "342034445e3c196602b75800db4efa573755d5338adb7eb30e298a69d9750d9b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.802C7C52-7B0F-48E1-87CE-0125AEFCB3F9/libimobiledevice_glue.xcframework.zip", checksum: "6d1b4537a90063dbc0050084df51b8f9fbbb9b7e19bfeae7561cb203037d8c52"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.802C7C52-7B0F-48E1-87CE-0125AEFCB3F9/libplist.xcframework.zip", checksum: "72157cc950e4570a39dd69f893cf88658c7962089f560b321ded26ab6e6fd90c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.802C7C52-7B0F-48E1-87CE-0125AEFCB3F9/libtatsu.xcframework.zip", checksum: "84318864411b5f0fcbef5ca4969c14fe06dba66b642cb76a23a7d8b339f3973a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.802C7C52-7B0F-48E1-87CE-0125AEFCB3F9/libusbmuxd.xcframework.zip", checksum: "9f3b703d9abec2e4103b31c807facbc62a97f0ccd2e93827a00cd5617a2b0363"),
    ]
)

