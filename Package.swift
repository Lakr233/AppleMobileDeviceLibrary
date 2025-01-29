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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3604E71C-4554-4DB6-9A30-4D2DC0E19642/libimobiledevice.xcframework.zip", checksum: "8eb666b0616496a5adbe0875fabe01d4dcd516218b65a5be826ab996402a6bd3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3604E71C-4554-4DB6-9A30-4D2DC0E19642/libimobiledevice_glue.xcframework.zip", checksum: "6f87158b9874e90937f1516ef8361b19bd18b1573852e85f53d61140a1d700fb"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3604E71C-4554-4DB6-9A30-4D2DC0E19642/libplist.xcframework.zip", checksum: "bc8ea6aed0bba23400d80e42b553ad56dfcd63e4a2a9bbc06d50f25c10835bcc"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3604E71C-4554-4DB6-9A30-4D2DC0E19642/libtatsu.xcframework.zip", checksum: "eb47d132548443a941b70a54af9bcc7ceddf0c84d96e49fbcd7225bcc98ef0fc"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3604E71C-4554-4DB6-9A30-4D2DC0E19642/libusbmuxd.xcframework.zip", checksum: "3c7088be9a60c9cd2052efd7f9595ceae04206fbaee23ca0fb224eae85a12613"),
    ]
)

