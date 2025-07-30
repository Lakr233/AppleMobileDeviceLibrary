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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.56A161F8-CC60-45DC-9742-89E5E695C766/libimobiledevice.xcframework.zip", checksum: "0c901e75113b7e947ac6b4269f3762afdf9af762c294ee43aa716fad18772777"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.56A161F8-CC60-45DC-9742-89E5E695C766/libimobiledevice_glue.xcframework.zip", checksum: "30c33d0a4b0efb5ecd54b0834751994809d82a5947f07ac8d927964a1f657dcc"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.56A161F8-CC60-45DC-9742-89E5E695C766/libplist.xcframework.zip", checksum: "009ffa37b6f8b3823e3d434f96f1ed019e7ba71410af3d895d2640802de76101"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.56A161F8-CC60-45DC-9742-89E5E695C766/libtatsu.xcframework.zip", checksum: "4e320b70c99b805764c4b0c3449a01cd3934527e4860598ad1154a4b495c2ad6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.56A161F8-CC60-45DC-9742-89E5E695C766/libusbmuxd.xcframework.zip", checksum: "aa1fc1af179cbb579fdeced1c47b54256dfcc3f5b782ea01d48dcb88186fd912"),
    ]
)

