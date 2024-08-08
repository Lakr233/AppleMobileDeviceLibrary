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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A1B792F4-114C-48C2-835F-A98F879ECDE5/libimobiledevice.xcframework.zip", checksum: "401d8d1fe531003b0847bfb0006e2b92ed8abcf2c4ca5ed3ba0f6ad588315e6f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A1B792F4-114C-48C2-835F-A98F879ECDE5/libimobiledevice_glue.xcframework.zip", checksum: "aa1d4399ed51954e30677b2868e15416eb4f9733595899d4a48ceb0a65ddbd61"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A1B792F4-114C-48C2-835F-A98F879ECDE5/libplist.xcframework.zip", checksum: "2a3bb5116f2dd6510403b05178f6480c4259f3e9d451792de5874c482b883882"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A1B792F4-114C-48C2-835F-A98F879ECDE5/libtatsu.xcframework.zip", checksum: "2235970d43e43ae492a84c08c5919d83e07363408cd39147f8b5893136e8b295"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.A1B792F4-114C-48C2-835F-A98F879ECDE5/libusbmuxd.xcframework.zip", checksum: "89dea42507298012948dc80d0475da3b6fe6b31f95c8ae4f59e3bc9ee54585e3"),
    ]
)

