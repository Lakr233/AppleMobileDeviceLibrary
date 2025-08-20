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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0AE1564B-F578-4C4D-8508-8E713BFBE37B/libimobiledevice.xcframework.zip", checksum: "e2286a13ee383da088d35c472308a45977d557b6e3cb97121dd547988ffb2a8a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0AE1564B-F578-4C4D-8508-8E713BFBE37B/libimobiledevice_glue.xcframework.zip", checksum: "b177beb8389caf53effe32173ccad5694bb1cd439b16281c3906199930dac078"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0AE1564B-F578-4C4D-8508-8E713BFBE37B/libplist.xcframework.zip", checksum: "76bc79ef59fe2dd1717eeef79b304f26d7e3efc0b14b288780e3056678789dc0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0AE1564B-F578-4C4D-8508-8E713BFBE37B/libtatsu.xcframework.zip", checksum: "635be89a14aa9c765ca793e5785e77be231b98771e66067111de60aeefb86814"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0AE1564B-F578-4C4D-8508-8E713BFBE37B/libusbmuxd.xcframework.zip", checksum: "1582888fa2cd47d9a0d707766dd31e5769931352ef2a0fc512e7c405821d5713"),
    ]
)

