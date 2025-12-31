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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2E4FD012-C1C4-4A9D-9FFF-F842AFCD062A/libimobiledevice.xcframework.zip", checksum: "a7f35fb9e3d77eea5da11da5ae73a05d8ad306d24e762e29efa439587c63316e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2E4FD012-C1C4-4A9D-9FFF-F842AFCD062A/libimobiledevice_glue.xcframework.zip", checksum: "6ee4dd2c8210dc94c9635a7526fd5a3298970b9929d6a39152458f2b73ded1c7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2E4FD012-C1C4-4A9D-9FFF-F842AFCD062A/libplist.xcframework.zip", checksum: "11adec8e1b202614d92885f3a9bb520f2c4f758fb0da00d5e9546009594d1ff7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2E4FD012-C1C4-4A9D-9FFF-F842AFCD062A/libtatsu.xcframework.zip", checksum: "3840265c39433e38011ce370096ba0718d7be7f951ba8a4fdad0f2eb9e9b7019"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2E4FD012-C1C4-4A9D-9FFF-F842AFCD062A/libusbmuxd.xcframework.zip", checksum: "aaab78eeb0e6c8ba08429ca498fd22610c57a51e0d42a518a09ed9f466262dad"),
    ]
)

