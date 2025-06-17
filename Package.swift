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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.47EF8157-4FCE-4051-83F6-48A0B89507C4/libimobiledevice.xcframework.zip", checksum: "8ffd9fed3aca7b50a0d7219d245e21deee33b56d7401cd6d9d5bce4d86b4a5b7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.47EF8157-4FCE-4051-83F6-48A0B89507C4/libimobiledevice_glue.xcframework.zip", checksum: "dc4a07d824e9c8752936103c0afa4b0ec510cced5fa91596f0a400a0c048e868"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.47EF8157-4FCE-4051-83F6-48A0B89507C4/libplist.xcframework.zip", checksum: "6bf3852ff1f88eedcbb53f6c250542e060866932136750958a8a0f789f591bb5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.47EF8157-4FCE-4051-83F6-48A0B89507C4/libtatsu.xcframework.zip", checksum: "7138e090f62c44e39b96aaeb58980798850ff36dc313a27c6e03a691ca2c5cfb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.47EF8157-4FCE-4051-83F6-48A0B89507C4/libusbmuxd.xcframework.zip", checksum: "cfedad8ee33a31e774cc66bd159634e61dfdccaf4bb723902506f3e7e364dec4"),
    ]
)

