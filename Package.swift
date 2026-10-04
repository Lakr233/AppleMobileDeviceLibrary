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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.969D00A3-B184-486D-9FD7-98B2C21104BE/libimobiledevice.xcframework.zip", checksum: "7f33ed2d6b197ac0a3db5af27e22bb55b33b1d18985788c294fb32d845f2ec6a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.969D00A3-B184-486D-9FD7-98B2C21104BE/libimobiledevice_glue.xcframework.zip", checksum: "6b173dddd94bc1c6c62823b0610ddd2f852f523ada60571b6834d954aae2f68e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.969D00A3-B184-486D-9FD7-98B2C21104BE/libplist.xcframework.zip", checksum: "bee5c48bb6fb6911d482d5f5e518dd9157f805466a2809332bcffb820db9d169"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.969D00A3-B184-486D-9FD7-98B2C21104BE/libtatsu.xcframework.zip", checksum: "0b09e235439b38ca04e483172d3c41309794adbd1de27c020cb64cd9442b6834"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.969D00A3-B184-486D-9FD7-98B2C21104BE/libusbmuxd.xcframework.zip", checksum: "765733d5609ff0828490047dbabd2cd871d83b0421ebfa93c9c721cdf44618b3"),
    ]
)

