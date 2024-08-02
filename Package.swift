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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.09B004F7-624D-4B85-A172-CC159FB7DAF0/libimobiledevice.xcframework.zip", checksum: "9e05bc0aff287a5a53d7a25f06d2cbcd889bff8ea59f4fbe5d03793bd6359a10"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.09B004F7-624D-4B85-A172-CC159FB7DAF0/libimobiledevice_glue.xcframework.zip", checksum: "41a6ad77214454789448f2124f9c2c048a9e01b71fa93de947c8cbac5842a97e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.09B004F7-624D-4B85-A172-CC159FB7DAF0/libplist.xcframework.zip", checksum: "20bebedea2d4deb9d7c3dd6dc074749234618fb221ea41fcd809f1f4dec74dde"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.09B004F7-624D-4B85-A172-CC159FB7DAF0/libtatsu.xcframework.zip", checksum: "4983eefc4a142a24e56ddaf0cff4bd7277a011a1e51ed887b5bfa4ae9f687f05"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.09B004F7-624D-4B85-A172-CC159FB7DAF0/libusbmuxd.xcframework.zip", checksum: "ff6143b8156950d9e466a5b2bd871ba1f2c5a8a5092dfeb30c5463a0e2ad3c31"),
    ]
)

