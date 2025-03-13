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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.78F75BB1-EEDE-44D6-BE4F-25F9923EB7EF/libimobiledevice.xcframework.zip", checksum: "9e3abb7e3b43379a3d830cd3a4c4df5089ff2ebe03b9a1683991b0dae8971229"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.78F75BB1-EEDE-44D6-BE4F-25F9923EB7EF/libimobiledevice_glue.xcframework.zip", checksum: "7754eefa37e54d6355164d8d64074d6cdcb12ab21a813cac9995e48838f3e6c3"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.78F75BB1-EEDE-44D6-BE4F-25F9923EB7EF/libplist.xcframework.zip", checksum: "018119bf8f0e26e0714d0a5d735d28e28dceb42443ecd1319e35b7597b0e1368"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.78F75BB1-EEDE-44D6-BE4F-25F9923EB7EF/libtatsu.xcframework.zip", checksum: "6a2849493f7208fbc6f783862bad197c1ec8983373c03da33762e31da63db373"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.78F75BB1-EEDE-44D6-BE4F-25F9923EB7EF/libusbmuxd.xcframework.zip", checksum: "07c510529ef293cdced6e14f48506bb8a8f54842e2d0f8131fe06656f99dd4b3"),
    ]
)

