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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.620852D6-3F06-4EE1-B709-FAC3120D3956/libimobiledevice.xcframework.zip", checksum: "e552cc7bb43dd37741fda1575eacdee1cae9117668626000ab0bed7efc634cd9"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.620852D6-3F06-4EE1-B709-FAC3120D3956/libimobiledevice_glue.xcframework.zip", checksum: "fbb8155ced980d1ba9ca3d40d16931f457de80345dc7e3b3c03c3cda769be5be"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.620852D6-3F06-4EE1-B709-FAC3120D3956/libplist.xcframework.zip", checksum: "11c815c54bec0068f5aa03307a53b749eec3039e1b51350cd79971a764670a08"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.620852D6-3F06-4EE1-B709-FAC3120D3956/libtatsu.xcframework.zip", checksum: "62b730d5db6a3cfc213d61f8e9fcec2346a51201ad02506ba889a7e9b471ea46"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.620852D6-3F06-4EE1-B709-FAC3120D3956/libusbmuxd.xcframework.zip", checksum: "c1ba44a8a7187067491eaa0a81e63c7f38922dcb8bf4589e89efb16aab69fe64"),
    ]
)

