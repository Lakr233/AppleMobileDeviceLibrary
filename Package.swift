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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52FAD670-80BB-4E09-96D8-26CEE54F7F7B/libimobiledevice.xcframework.zip", checksum: "c5b3d1bd9f6e0e3785b90646a3005d8d685df1d771e44f5fe8f24227ae4ed4ab"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52FAD670-80BB-4E09-96D8-26CEE54F7F7B/libimobiledevice_glue.xcframework.zip", checksum: "660e5094a91c477eebbbcd84c7b278361b4ee8eed404678ef61302ba2a216cf2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52FAD670-80BB-4E09-96D8-26CEE54F7F7B/libplist.xcframework.zip", checksum: "39ef978085aed750208384f30d445f91fc72aff53da5bad4653a48b04f51362b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52FAD670-80BB-4E09-96D8-26CEE54F7F7B/libtatsu.xcframework.zip", checksum: "51a82c3d8aa066552219e910fe255505915d5b01faa143483636687402566f6e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.52FAD670-80BB-4E09-96D8-26CEE54F7F7B/libusbmuxd.xcframework.zip", checksum: "f3142231f3065b9e159dae5fd0bd4589fae7492a1fb59df4c4c248c001d8ef38"),
    ]
)

