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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5000723B-7FC2-4905-9479-7AE23B2FD849/libimobiledevice.xcframework.zip", checksum: "a29f731e4870b9a1d4d09796bdbbc2e7ba15b019913ed5b652c739ef059d2c9d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5000723B-7FC2-4905-9479-7AE23B2FD849/libimobiledevice_glue.xcframework.zip", checksum: "e78ec13be2f3bb6345662fbf65d344c04612f9776bfbda52970ab5fdd4da8607"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5000723B-7FC2-4905-9479-7AE23B2FD849/libplist.xcframework.zip", checksum: "a96f808984b98715fd80ba60f754d5c987848c5e5f07e096314bbc428b061281"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5000723B-7FC2-4905-9479-7AE23B2FD849/libtatsu.xcframework.zip", checksum: "b47ce5933ceb16775e6a890b8ab840b7b48b6c56d3c0eba55c034d317357f697"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5000723B-7FC2-4905-9479-7AE23B2FD849/libusbmuxd.xcframework.zip", checksum: "456c3b708bb2eccd3f85079084e2789deab7b99ef3828a4174a45ce8c3c128ec"),
    ]
)

