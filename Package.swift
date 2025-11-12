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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40ECABAC-9966-4ADC-B346-8ED8C57878C7/libimobiledevice.xcframework.zip", checksum: "0baa74a1fa72f9244770dd082e2e5beae8065ab30be5cbd084deb50bdd58b42c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40ECABAC-9966-4ADC-B346-8ED8C57878C7/libimobiledevice_glue.xcframework.zip", checksum: "d7527265c75491520bef7d7a367fe9c5d76d71cc73da64ceca062a84db2c7914"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40ECABAC-9966-4ADC-B346-8ED8C57878C7/libplist.xcframework.zip", checksum: "f39d708c762f4a7e336adb99207386c64ba3abf31f10ffdc0799f8655d079589"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40ECABAC-9966-4ADC-B346-8ED8C57878C7/libtatsu.xcframework.zip", checksum: "0b5acc4344be77f06ff0e5b819c05d7a4764c2633e212d448464385e715d9ff1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.40ECABAC-9966-4ADC-B346-8ED8C57878C7/libusbmuxd.xcframework.zip", checksum: "db264ba3b30f08195e5dad57a8d8cce0bc8f9a3870dcac0434bfa80cdfc46727"),
    ]
)

