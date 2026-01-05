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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FA9EC0E2-E742-4E9D-97E2-FDF6CA9EE94D/libimobiledevice.xcframework.zip", checksum: "b241cd52ed3ee17dfea208ac29acb096996d40a95e54460b7290660e09152037"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FA9EC0E2-E742-4E9D-97E2-FDF6CA9EE94D/libimobiledevice_glue.xcframework.zip", checksum: "7296a5b2572f27df83093fb07e1e057e42ab03aff0da485a8cbae65962512f96"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FA9EC0E2-E742-4E9D-97E2-FDF6CA9EE94D/libplist.xcframework.zip", checksum: "19ce5cb69b97762e2fb87c61917edb0fbf1129ee428e75a4682fefe989791959"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FA9EC0E2-E742-4E9D-97E2-FDF6CA9EE94D/libtatsu.xcframework.zip", checksum: "8bec3c6999f9f90296f06feeb1b00ee7058bf7387f6c9485c70fc13e15cb03d5"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FA9EC0E2-E742-4E9D-97E2-FDF6CA9EE94D/libusbmuxd.xcframework.zip", checksum: "67f8a121dbf9d325bdba6902cf0dc4ccb4380a282720dcf40ccc742b0f53827a"),
    ]
)

