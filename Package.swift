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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4E3FCD84-ED63-4443-AF60-310F225F91C0/libimobiledevice.xcframework.zip", checksum: "8806ef1de38714483ba50635f00e07cb8c36ca6050b490b65eca7b390da6302d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4E3FCD84-ED63-4443-AF60-310F225F91C0/libimobiledevice_glue.xcframework.zip", checksum: "9dc2b3ad9fc01aac37e8464a2e0006f9cb578c6966fec5d07bcb64822f62afa3"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4E3FCD84-ED63-4443-AF60-310F225F91C0/libplist.xcframework.zip", checksum: "88e3e9eb344ee9208d7946788f577316cec2198105cecad561d4106978016ab9"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4E3FCD84-ED63-4443-AF60-310F225F91C0/libtatsu.xcframework.zip", checksum: "16cdf3e496663579ca80a20f926b82183ff5c813d26d597d86881514b67c3bcc"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4E3FCD84-ED63-4443-AF60-310F225F91C0/libusbmuxd.xcframework.zip", checksum: "9a6a6a86c60e54ab783d1a7acc8b519d4429dc484d0ee60f52006c372ca22f24"),
    ]
)

