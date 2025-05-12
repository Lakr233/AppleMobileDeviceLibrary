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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.57B98F61-5657-4833-B53E-CFC842D952B6/libimobiledevice.xcframework.zip", checksum: "2bcd3f40bd2b04bc001cfdf60a018b5e5cd855020ba9e7da36431d777e6cd10f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.57B98F61-5657-4833-B53E-CFC842D952B6/libimobiledevice_glue.xcframework.zip", checksum: "bbaadd7cc02bc2e58107cb646c00b2af11fe5ec62672a5fe63c48d987037e59a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.57B98F61-5657-4833-B53E-CFC842D952B6/libplist.xcframework.zip", checksum: "6f41dfbe94d1c5063c5564f741630f8be08802fabf971e20fe76addbb4903cce"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.57B98F61-5657-4833-B53E-CFC842D952B6/libtatsu.xcframework.zip", checksum: "405aead72dae1842c3719b701ae3dfb11f7c5fcf3f243fdb92f0d7631f2bbd4a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.57B98F61-5657-4833-B53E-CFC842D952B6/libusbmuxd.xcframework.zip", checksum: "bba38b8a3a897e7caa5ee3f2ef377ea0229dccafd7c9f92002a21baaeba3391f"),
    ]
)

