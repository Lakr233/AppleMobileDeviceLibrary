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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C8D3802A-A936-4D2C-AB23-380CCDA2CAD8/libimobiledevice.xcframework.zip", checksum: "c8fbf33fa04572c95deb345f70920e35f9f795c7578d129fa4fdc167277b6b9f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C8D3802A-A936-4D2C-AB23-380CCDA2CAD8/libimobiledevice_glue.xcframework.zip", checksum: "c111ea85934b8b86673b2b86b7d8fa03b7720319c4753d4beea44703ba38328b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C8D3802A-A936-4D2C-AB23-380CCDA2CAD8/libplist.xcframework.zip", checksum: "2283ba55fc0e1b892a4b7fb75875c416602a4e5a3d46e5376583731a358d7e39"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C8D3802A-A936-4D2C-AB23-380CCDA2CAD8/libtatsu.xcframework.zip", checksum: "e954c0522d530ff7d5de5538fea8dcaf1329a4cdb74a47d0cb891cf6cf3f7505"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C8D3802A-A936-4D2C-AB23-380CCDA2CAD8/libusbmuxd.xcframework.zip", checksum: "3d1ec1af29b31e7beea645c2338389298c3257379a517a8c0fd16d3b6133f954"),
    ]
)

