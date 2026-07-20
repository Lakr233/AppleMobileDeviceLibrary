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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.62A857E8-FAD4-4168-B484-EBAD39343F08/libimobiledevice.xcframework.zip", checksum: "060bb52c95fce1e8c1c2d5b8901b9d360e75ddd0e37e12c1079f0a2fc02f98f3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.62A857E8-FAD4-4168-B484-EBAD39343F08/libimobiledevice_glue.xcframework.zip", checksum: "568d658fde537a1afbb98552862db487681a481e21b9369366053f4e28494e6e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.62A857E8-FAD4-4168-B484-EBAD39343F08/libplist.xcframework.zip", checksum: "eb45c84cbec85c36ec567b2e902c93bcb4de0a2432aaf2faa27e2f52a895fb08"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.62A857E8-FAD4-4168-B484-EBAD39343F08/libtatsu.xcframework.zip", checksum: "3fccdf9f4d982480452ccb46d44cee5027399ed9ef1b1099a64f51246690bd5d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.62A857E8-FAD4-4168-B484-EBAD39343F08/libusbmuxd.xcframework.zip", checksum: "5d0956f32d638aa32364f82c6e2eb137dc6d857e89f53eba11e5beef2284c869"),
    ]
)

