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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E8EA75BD-EFAD-4A29-BACD-4D36AF5C322F/libimobiledevice.xcframework.zip", checksum: "94aebae0736ab0f14d273990ef2ce4602f2ebb801f168a0686b186b6e8658c38"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E8EA75BD-EFAD-4A29-BACD-4D36AF5C322F/libimobiledevice_glue.xcframework.zip", checksum: "c31b7d7f8226e9cbe6458510d5e4f6e21349f30dd081a687b5fdfb28536bddc1"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E8EA75BD-EFAD-4A29-BACD-4D36AF5C322F/libplist.xcframework.zip", checksum: "c10cc3c42ed1b0e5962592964c6edeb3b2db720f67371da964d541d9f40a8243"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E8EA75BD-EFAD-4A29-BACD-4D36AF5C322F/libtatsu.xcframework.zip", checksum: "73aca0a243883c7cc794ccd6d989ae0c8fa55b3a2933707723cc799e6b84ca68"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.E8EA75BD-EFAD-4A29-BACD-4D36AF5C322F/libusbmuxd.xcframework.zip", checksum: "91d5ac5ef3f3898f3ef60c38c005eec738d8b475b2853263e5a9b502ec830980"),
    ]
)

