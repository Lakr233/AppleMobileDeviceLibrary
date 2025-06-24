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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F48EDA28-5E60-4FAC-91CD-8713FD63D702/libimobiledevice.xcframework.zip", checksum: "0a8ac58cd0341f940662f4e15413b69925510d767f462f2a83b8f1b195e9854d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F48EDA28-5E60-4FAC-91CD-8713FD63D702/libimobiledevice_glue.xcframework.zip", checksum: "62fb441f28f9be430a79ffb9cd45ae06431af82e9d259fb2fd21b9c981cb8ed8"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F48EDA28-5E60-4FAC-91CD-8713FD63D702/libplist.xcframework.zip", checksum: "4b6e018da07b2abc8afcba7ecb25738a151aa28cb3f2aac892db71a5bdbd7cbd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F48EDA28-5E60-4FAC-91CD-8713FD63D702/libtatsu.xcframework.zip", checksum: "72dcdae4d5766f17611f34767acd85e09a39d69409c4574c98c7a5f0eef19d8d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F48EDA28-5E60-4FAC-91CD-8713FD63D702/libusbmuxd.xcframework.zip", checksum: "0095de87fe486e139647427c210638874e8e88bea805dfbd61690d3b7c4e0520"),
    ]
)

