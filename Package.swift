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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BB39BE5-006B-47C0-A72A-0AA322D1DFF7/libimobiledevice.xcframework.zip", checksum: "85d70eb2a7af19870ec1f5372bf707af89c28607b1515451505fa56d36cdd822"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BB39BE5-006B-47C0-A72A-0AA322D1DFF7/libimobiledevice_glue.xcframework.zip", checksum: "9eb881c3b06a3511089cdba9c394db57b4f3d3424c4e06d71f9cbc21250b2f82"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BB39BE5-006B-47C0-A72A-0AA322D1DFF7/libplist.xcframework.zip", checksum: "a9951b70e9202c1912bcce0373d3b52311921af0f64bbb44af230e54da0ad99d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BB39BE5-006B-47C0-A72A-0AA322D1DFF7/libtatsu.xcframework.zip", checksum: "0d706ba6e1d2d7ee0fb0b21d3bb85b8c61796812df6f1285f6bd7fefc7c2b6c7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4BB39BE5-006B-47C0-A72A-0AA322D1DFF7/libusbmuxd.xcframework.zip", checksum: "32b7b534625a34a5fb84386c0486ae6df1fd640fbf24724dfa427449f4d38341"),
    ]
)

