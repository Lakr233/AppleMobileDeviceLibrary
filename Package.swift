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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E2BC9946-9773-4CB9-9539-0478719AFCAE/libimobiledevice.xcframework.zip", checksum: "141f31fba284b92379406b43732fddf4d419ebf494b4c5f724952b449db57614"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E2BC9946-9773-4CB9-9539-0478719AFCAE/libimobiledevice_glue.xcframework.zip", checksum: "872d88774da3892c5b187473280f48903431e0715d7c7f893466ee7469a4f719"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E2BC9946-9773-4CB9-9539-0478719AFCAE/libplist.xcframework.zip", checksum: "9df32ca3fbae2fa1f5a770507ea982c22ca96c7afeff3d8ad8b5b4b664452247"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E2BC9946-9773-4CB9-9539-0478719AFCAE/libtatsu.xcframework.zip", checksum: "1ab2009def7d42bd56def081ad298651e7457ee5ff4be170bcdd575e464b6c85"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E2BC9946-9773-4CB9-9539-0478719AFCAE/libusbmuxd.xcframework.zip", checksum: "52a34cf7dd0014a89249543ffc20b5700cfc6d69c396626550e35d5bbf86f725"),
    ]
)

