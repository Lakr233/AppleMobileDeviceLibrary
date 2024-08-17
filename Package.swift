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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC3A8094-5186-4527-8A31-460F008CB0F8/libimobiledevice.xcframework.zip", checksum: "fd1020f6a34443ea8e7b123427c3c405bcdcc5259b820ffd81ca63ccde0165fb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC3A8094-5186-4527-8A31-460F008CB0F8/libimobiledevice_glue.xcframework.zip", checksum: "99e95be6d89f6154d373fa450c8351c149a94c7fcdbba7d5b3e60c5eb2ae3a4f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC3A8094-5186-4527-8A31-460F008CB0F8/libplist.xcframework.zip", checksum: "2bd7f09cdd7b98632bcc6021ec9e52a01745e92f6e73e45bb0c7825cf97a523e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC3A8094-5186-4527-8A31-460F008CB0F8/libtatsu.xcframework.zip", checksum: "a1747c4f394f78f10e707435f5a0c8a4f626474c49ee6268de343d184e99c5a7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DC3A8094-5186-4527-8A31-460F008CB0F8/libusbmuxd.xcframework.zip", checksum: "dc0f92665b2f748ac50e8807ce34ca2f07da602644f4eb6d6a67bf6478426dd9"),
    ]
)

