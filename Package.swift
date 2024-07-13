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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0F713102-46BB-4D9B-9A25-B10EC2318752/libimobiledevice.xcframework.zip", checksum: "6da8d797ef6d3361ee51befe3fc43e06ad90fea8d0281ac0aafbeda26ba5b99e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0F713102-46BB-4D9B-9A25-B10EC2318752/libimobiledevice_glue.xcframework.zip", checksum: "744e579cdd41c1d89ed70b84b015bc42590e3148915aa329a478c3098b3097a7"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0F713102-46BB-4D9B-9A25-B10EC2318752/libplist.xcframework.zip", checksum: "975a53b6b2ffd824be9421f107c2f427cf28e62569db5dedc629cb24feb9cb67"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0F713102-46BB-4D9B-9A25-B10EC2318752/libtatsu.xcframework.zip", checksum: "49f229e923ca91b2acd109288e0be505afc756db2de3ed175aaa720c6e2363f6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0F713102-46BB-4D9B-9A25-B10EC2318752/libusbmuxd.xcframework.zip", checksum: "08003df9ceebe5ee645d9f5cffd45d8df1d4df9eefcae3970bd564424a511879"),
    ]
)

