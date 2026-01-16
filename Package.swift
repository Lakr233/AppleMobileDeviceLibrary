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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.93673DD0-037F-4C27-B1BE-4E119AEA622F/libimobiledevice.xcframework.zip", checksum: "af82aa21adf36008b4b7fbc26a16a07bff58589f9dfa8e5eb08a583077e9904b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.93673DD0-037F-4C27-B1BE-4E119AEA622F/libimobiledevice_glue.xcframework.zip", checksum: "19651670cc7622a631b995218fd7831ac85802e4c18515e1eb437bd4f2cc5dd2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.93673DD0-037F-4C27-B1BE-4E119AEA622F/libplist.xcframework.zip", checksum: "264c452e750dbd22d09826d359e11375a44982c6e45fefeff6a34db86dd84ac0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.93673DD0-037F-4C27-B1BE-4E119AEA622F/libtatsu.xcframework.zip", checksum: "5888ef1d44aeb2fe167dfaeaa787ad6cb898496d6c1b9f7d487181aac85812bb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.93673DD0-037F-4C27-B1BE-4E119AEA622F/libusbmuxd.xcframework.zip", checksum: "7721611b7dd5e05c7c74d394577b5c032fb418edf0896c383e44d216235533b5"),
    ]
)

