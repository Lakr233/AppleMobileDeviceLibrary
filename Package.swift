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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.81D624E3-0061-4F5A-ABB8-91B984D6899B/libimobiledevice.xcframework.zip", checksum: "297235695e1261a975231be76a3256c9d99f63461cd1a4b9d2d316a28529925d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.81D624E3-0061-4F5A-ABB8-91B984D6899B/libimobiledevice_glue.xcframework.zip", checksum: "72e7daa27594dc50b6bca2934df46ccb7f43b1e7531121f826e221f71a6f84c0"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.81D624E3-0061-4F5A-ABB8-91B984D6899B/libplist.xcframework.zip", checksum: "dfb792b0528d6bf079372b74cb4a6bed24a40a142034f5ec08645b259f53e345"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.81D624E3-0061-4F5A-ABB8-91B984D6899B/libusbmuxd.xcframework.zip", checksum: "5dfaabe58b24f1b73c3caa5876c0b5c9f63c83ac5596162621880432fff3e450"),
    ]
)

