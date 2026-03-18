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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C64637C8-29B8-474C-922E-855E3D2455F6/libimobiledevice.xcframework.zip", checksum: "6a6325aa26e38746abc6f2909039439d2292f95802b4b9c3d530e9588108a4ea"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C64637C8-29B8-474C-922E-855E3D2455F6/libimobiledevice_glue.xcframework.zip", checksum: "5716c5cad25530169ddd49b19aa7ad9681f70719d791c45318f8d099a1572a01"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C64637C8-29B8-474C-922E-855E3D2455F6/libplist.xcframework.zip", checksum: "aea84721d7677c80c8399629f5443bd75f7580e7ea03ff2d0c8480735486b318"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C64637C8-29B8-474C-922E-855E3D2455F6/libtatsu.xcframework.zip", checksum: "667a03003000c7ca385939be7a771325f78755b93d2799bd0807ae80610668f3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C64637C8-29B8-474C-922E-855E3D2455F6/libusbmuxd.xcframework.zip", checksum: "512918ea975ad4fdeb658a4a03176d2dcd6c689cfb008bb61cfda066006598ab"),
    ]
)

