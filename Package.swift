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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D8D7DD31-5E7C-4AE4-A16B-29A85EAC8BF6/libimobiledevice.xcframework.zip", checksum: "a6b6293a72e2e57d9b8d5cc83578068e19e6bb3be27182c141af78426badf32b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D8D7DD31-5E7C-4AE4-A16B-29A85EAC8BF6/libimobiledevice_glue.xcframework.zip", checksum: "ba177b463ce9ed140bb80cf07c2badfc1bd8de7fe258d3b540b4f791e3ba1264"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D8D7DD31-5E7C-4AE4-A16B-29A85EAC8BF6/libplist.xcframework.zip", checksum: "13a9db2ca8708234263516f08015414ca014f89a6f9ab437cb470959f1d3690c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D8D7DD31-5E7C-4AE4-A16B-29A85EAC8BF6/libtatsu.xcframework.zip", checksum: "64190c0ac8c140f351a55fbc1ea74ff865eccc4f7457d3bd690cf9f41b5132f9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.D8D7DD31-5E7C-4AE4-A16B-29A85EAC8BF6/libusbmuxd.xcframework.zip", checksum: "badb2a57795b64940b12bd688349c07daaea9bfb11a6be3ca33813e45dfe78f2"),
    ]
)

