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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED3710E1-302F-4EBF-B6B6-E8A89F10643F/libimobiledevice.xcframework.zip", checksum: "b7b0801483a02129ab8571afadd1cf48b6733c446899abf6857abc7aa10494cd"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED3710E1-302F-4EBF-B6B6-E8A89F10643F/libimobiledevice_glue.xcframework.zip", checksum: "a28818c1fc47ded0d0c5dccfa0033aee8d3b5cce1821ac9dc6b39608dcf0aee5"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED3710E1-302F-4EBF-B6B6-E8A89F10643F/libplist.xcframework.zip", checksum: "b3141d41c599812204e1095bc8aebe249fe59c65318d8d31c6ce48c3c6d0591e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED3710E1-302F-4EBF-B6B6-E8A89F10643F/libtatsu.xcframework.zip", checksum: "8faea71eb81145debae4798b479767ff9695d913187eca3783aa00faf5b85f12"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ED3710E1-302F-4EBF-B6B6-E8A89F10643F/libusbmuxd.xcframework.zip", checksum: "ab87b345242195cba6116fc26fe0ed8cc2879df830df45b5df742a4afe1f48aa"),
    ]
)

