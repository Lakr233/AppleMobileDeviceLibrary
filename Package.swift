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
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.88031806-711C-4AF3-928F-7250F84EF13C/libimobiledevice.xcframework.zip", checksum: "cb5d96774d50d1b21bff9b4340ea2475ab61ff81192b15dc1d92fb206ffedd83"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.88031806-711C-4AF3-928F-7250F84EF13C/libimobiledevice_glue.xcframework.zip", checksum: "b657a0aa1b60cece5618e548946e9a7317d0535764bcdc52d940726ded8447d8"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.88031806-711C-4AF3-928F-7250F84EF13C/libplist.xcframework.zip", checksum: "604c0aeb172b75336a5fbffb23ef09199e7876152ef8ccbf51a1d35555218949"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.88031806-711C-4AF3-928F-7250F84EF13C/libusbmuxd.xcframework.zip", checksum: "c86d27f5c8b18879a554a00b71b88069f425c80a1ccf10a5884c3ce7967ebef0"),
    ]
)

