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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1FFC66C9-76FB-4C9D-88BC-FEE3BFC1A379/libimobiledevice.xcframework.zip", checksum: "d591c38de59553b2926c0144418ee3458f123f2158556e16be393a6669229d72"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1FFC66C9-76FB-4C9D-88BC-FEE3BFC1A379/libimobiledevice_glue.xcframework.zip", checksum: "7b6a40b050723d1f57c90357fc830fdc793732e70012b22c6c661eeabd96a493"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1FFC66C9-76FB-4C9D-88BC-FEE3BFC1A379/libplist.xcframework.zip", checksum: "1f0720f92f450602b3846cfd89937f3c918b564cdb0d890fb846c5a10adc600f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1FFC66C9-76FB-4C9D-88BC-FEE3BFC1A379/libtatsu.xcframework.zip", checksum: "f3857ddb766a5ca9a343ca130bc2b29806a306e6cdfbc448ad113d2ad87698b6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1FFC66C9-76FB-4C9D-88BC-FEE3BFC1A379/libusbmuxd.xcframework.zip", checksum: "55c91cf9edb937696a89fee8fadf096d267e076350639ada9dd487e8e9d2de1e"),
    ]
)

