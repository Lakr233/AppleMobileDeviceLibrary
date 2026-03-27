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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1C77CDA7-368C-48DD-B20C-AFDBDD7B5EBB/libimobiledevice.xcframework.zip", checksum: "39d3eeaf097c162b95806ad22d03ee8a5ebd5b613ad4c1ae647927dd56fe4358"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1C77CDA7-368C-48DD-B20C-AFDBDD7B5EBB/libimobiledevice_glue.xcframework.zip", checksum: "678f61cc489e37442ae9d7996c64bba16bbb6d954cdd5762855a039e313b7340"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1C77CDA7-368C-48DD-B20C-AFDBDD7B5EBB/libplist.xcframework.zip", checksum: "d61d6bb87535eb4404fe3645b0e2fefbb1a254ec05daf183a5140bf82dd4440e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1C77CDA7-368C-48DD-B20C-AFDBDD7B5EBB/libtatsu.xcframework.zip", checksum: "52e7b743379e0967647467b9abf356fe4269de491339f134efd20f950d84a2e6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.1C77CDA7-368C-48DD-B20C-AFDBDD7B5EBB/libusbmuxd.xcframework.zip", checksum: "9eed0a814181c7cf0cfdd3ad30ae17f36c7a3cacb8d18cbca0d566ddd18e2212"),
    ]
)

