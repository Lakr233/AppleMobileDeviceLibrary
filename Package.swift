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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.27E95B59-9628-4E92-89B7-239A7E4DE7DF/libimobiledevice.xcframework.zip", checksum: "2938fc6f29de1178e4ed823034217aca4aa7ab12be98ff7a34240db93b05f238"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.27E95B59-9628-4E92-89B7-239A7E4DE7DF/libimobiledevice_glue.xcframework.zip", checksum: "3b61db44c47e685e55d4282b8852fb2575934d000549dee9cf87976635f6394c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.27E95B59-9628-4E92-89B7-239A7E4DE7DF/libplist.xcframework.zip", checksum: "3a1f215c89fad1c3adf32fef6d8c571b447d0dc0760948b1c5969bff032c276b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.27E95B59-9628-4E92-89B7-239A7E4DE7DF/libtatsu.xcframework.zip", checksum: "30196aa00cfccca41129b86d96abff1f135fdac70a46fa89e66cdb2147dbcd57"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.27E95B59-9628-4E92-89B7-239A7E4DE7DF/libusbmuxd.xcframework.zip", checksum: "fae43896622989edb31b05e5e908061438af703ff488bc447a192256da2bbf5d"),
    ]
)

