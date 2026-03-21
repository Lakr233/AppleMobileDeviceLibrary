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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.22C86E05-4142-41A2-8C2A-C16B4B2E9C96/libimobiledevice.xcframework.zip", checksum: "95527ea79adf1eb1385aee3af5a7ce51511581bb0703083b4ab8616f29210e87"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.22C86E05-4142-41A2-8C2A-C16B4B2E9C96/libimobiledevice_glue.xcframework.zip", checksum: "1647cd261c6b7b417683b161258e7fcd78c8eab4dc611042240a4a1e4058198c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.22C86E05-4142-41A2-8C2A-C16B4B2E9C96/libplist.xcframework.zip", checksum: "928076cde26c2d772d214986351c78141ceb95b139dddaabdfe8453f48ea413b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.22C86E05-4142-41A2-8C2A-C16B4B2E9C96/libtatsu.xcframework.zip", checksum: "a1197df14fd0ca6a77056058ef21de1339fc59f17c06fb3a8b1ae65e75682f1a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.22C86E05-4142-41A2-8C2A-C16B4B2E9C96/libusbmuxd.xcframework.zip", checksum: "270bd15a3a3c216fc56faa9bb48a811e1142267c7e35907635087d2839f47ffc"),
    ]
)

