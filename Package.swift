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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.54CFBB6D-C518-43BB-998A-6CE59869FC10/libimobiledevice.xcframework.zip", checksum: "35a11173a85e21899fa265c807a5d304dcbd597f944da46e6215cc5a0d62b4ec"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.54CFBB6D-C518-43BB-998A-6CE59869FC10/libimobiledevice_glue.xcframework.zip", checksum: "66d459f47114f232ccbf3d475018f0eaac7daf0b65afe653ec62b46f6c66c363"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.54CFBB6D-C518-43BB-998A-6CE59869FC10/libplist.xcframework.zip", checksum: "ee4035da76b1f1565267bee7d11b3b39bb9543ee37552dc7a218675eede51486"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.54CFBB6D-C518-43BB-998A-6CE59869FC10/libusbmuxd.xcframework.zip", checksum: "cf77ff30286db5dcee9d3f1248d67c0f0553cbc9b5f050b0021268eb7b436ba1"),
    ]
)

