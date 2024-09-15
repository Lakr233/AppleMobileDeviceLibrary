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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.94074F0B-7978-47A8-9A56-899EED56D095/libimobiledevice.xcframework.zip", checksum: "bd8ddcf77e950e60953d95b8c26d25dfe6a7548a5e67c6aa21f19c71ff67d973"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.94074F0B-7978-47A8-9A56-899EED56D095/libimobiledevice_glue.xcframework.zip", checksum: "7bb60c3673da6fa195564571fdddc67b5af5083f5184589a50262a053a55b5a8"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.94074F0B-7978-47A8-9A56-899EED56D095/libplist.xcframework.zip", checksum: "9654757bfc08a97f5a942f339c0c5315155f5812294f225b8d93782951cbdfbd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.94074F0B-7978-47A8-9A56-899EED56D095/libtatsu.xcframework.zip", checksum: "94c622f1fd9b565c5ba933fedf5a7dea77f9a1235de227badca9d798b03e6c7b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.94074F0B-7978-47A8-9A56-899EED56D095/libusbmuxd.xcframework.zip", checksum: "fe26fc5064c721893dbc945eaf43badf79335ce3fe3aa295603a91c92a71ba20"),
    ]
)

