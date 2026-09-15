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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9E654145-4F26-4E75-902E-21F9925122C1/libimobiledevice.xcframework.zip", checksum: "00a3769f34c5f698b651e1400a10d2ecd7b4ac5c0a7e07498780b17eb24e874d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9E654145-4F26-4E75-902E-21F9925122C1/libimobiledevice_glue.xcframework.zip", checksum: "a57f436e2e72d853bcb10b91df75cc39431d61d157df7c608c96d54e3dadce80"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9E654145-4F26-4E75-902E-21F9925122C1/libplist.xcframework.zip", checksum: "221bd6dc0dfbb78e08aeeb732b22a1aa3b4fb80714c34b19a3bb1c88a5692025"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9E654145-4F26-4E75-902E-21F9925122C1/libtatsu.xcframework.zip", checksum: "c61f693fdf96b7175ba3a9fe33395c3bf905b7b38f8e418598d75bceae7c9116"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9E654145-4F26-4E75-902E-21F9925122C1/libusbmuxd.xcframework.zip", checksum: "a826c64c9f963a84bbaed34839d317ad9bb4e5a6dd9a0f71ca5b9a5c21f571af"),
    ]
)

