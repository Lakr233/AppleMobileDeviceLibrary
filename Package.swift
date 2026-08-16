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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.664F7D7D-4ABA-4721-A5DF-A4766144BC9D/libimobiledevice.xcframework.zip", checksum: "46f898c54b5beecacd7d59ade5e26aa141458e12a65d76b728ea75ef72cf8a8b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.664F7D7D-4ABA-4721-A5DF-A4766144BC9D/libimobiledevice_glue.xcframework.zip", checksum: "a72423865f1277dc7fd5e51aa3a50fb20c9e67203b35e17024a393f70734afe3"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.664F7D7D-4ABA-4721-A5DF-A4766144BC9D/libplist.xcframework.zip", checksum: "99205814a96ec9bda7f9fb63e55220852e38ad5e448638d4ff4952cc0a5b1143"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.664F7D7D-4ABA-4721-A5DF-A4766144BC9D/libtatsu.xcframework.zip", checksum: "74a50474c17ccd3ade6c666f2c5a70d881ecd7f4fe1ceb5109316cba04050ee6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.664F7D7D-4ABA-4721-A5DF-A4766144BC9D/libusbmuxd.xcframework.zip", checksum: "b4d99937c7cc16cdcb1a9a5fe48ce15898e836a064e5821623be238cb1cf41d0"),
    ]
)

