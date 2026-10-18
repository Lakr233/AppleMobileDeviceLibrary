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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C349FE49-023D-40C2-AA7F-5844F4366B5C/libimobiledevice.xcframework.zip", checksum: "b0568d45ecd594a45b1cee649f340bf0774155538d5955f4993c1a7fbc306964"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C349FE49-023D-40C2-AA7F-5844F4366B5C/libimobiledevice_glue.xcframework.zip", checksum: "cb95aee709acaf76c17f30009190d2caacd3ddb36c24b7b27c02542e6a1ab528"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C349FE49-023D-40C2-AA7F-5844F4366B5C/libplist.xcframework.zip", checksum: "9ed9956ac048756f849b8e631b6de718a6878d4ba48b1c421be80e4fd5a85838"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C349FE49-023D-40C2-AA7F-5844F4366B5C/libtatsu.xcframework.zip", checksum: "76fa150a909fa67c2f64021ae411183e236c888893f7bf9789cef0c36d746723"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C349FE49-023D-40C2-AA7F-5844F4366B5C/libusbmuxd.xcframework.zip", checksum: "dbfc97a3ab18e663299fe01da475cd85fe183c89b51cee6dc5a6224352af37d4"),
    ]
)

