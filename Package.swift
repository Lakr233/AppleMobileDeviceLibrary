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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.394D3C97-9759-4162-B81D-30C48C5E5425/libimobiledevice.xcframework.zip", checksum: "5016cdbf774d95cee0e422faa48c37d6e3a88032536e7163f0901cb64045eb54"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.394D3C97-9759-4162-B81D-30C48C5E5425/libimobiledevice_glue.xcframework.zip", checksum: "18eab5805876d655c5f4f7cde315dcfbb25d14563f5c6b2b0847f3a7e0bacd89"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.394D3C97-9759-4162-B81D-30C48C5E5425/libplist.xcframework.zip", checksum: "dc9db67b2ea34ed885225d8116d6f58fb2f60605a3d5f7d1c0479166ccdd99b3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.394D3C97-9759-4162-B81D-30C48C5E5425/libtatsu.xcframework.zip", checksum: "1916c745bd4442f635e15cd4501c8dfe42ce97a9ec31a6d7f921a29218c46775"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.394D3C97-9759-4162-B81D-30C48C5E5425/libusbmuxd.xcframework.zip", checksum: "ca2c89cc8d28798a4cb6b875a34d90ff8963839a6a37bf35f7505b84759236a8"),
    ]
)

