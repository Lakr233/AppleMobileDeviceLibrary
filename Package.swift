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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3075C34D-B543-4BDE-8D5E-B2B9625C991D/libimobiledevice.xcframework.zip", checksum: "0b21f953e0802d431c3e750e1af4b34d1093605a47a150c8564b31ddb492c969"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3075C34D-B543-4BDE-8D5E-B2B9625C991D/libimobiledevice_glue.xcframework.zip", checksum: "58fd25f465a47e3af1b51a4a371ba725ba543ade7171327b5fc4ba44b979299c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3075C34D-B543-4BDE-8D5E-B2B9625C991D/libplist.xcframework.zip", checksum: "67c8186dc1de784472875eb61170343c173a15eb1f2335ea537fd2aa849cf88f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3075C34D-B543-4BDE-8D5E-B2B9625C991D/libtatsu.xcframework.zip", checksum: "394b509b47461b31497f3508a54658444927a18951deb491af9326032a1ec97d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3075C34D-B543-4BDE-8D5E-B2B9625C991D/libusbmuxd.xcframework.zip", checksum: "4ee18ad301613c2a92aaa6c0969d8ca44abe05741f26bbabcb3490876a7f4e8c"),
    ]
)

