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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA7D54A3-D428-4D19-A9FE-6F8A9227691C/libimobiledevice.xcframework.zip", checksum: "099c4e69ea78d250856648a1a1617f2160fb520df6898dc44d3bda15054cb8d1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA7D54A3-D428-4D19-A9FE-6F8A9227691C/libimobiledevice_glue.xcframework.zip", checksum: "e682526bd44a2a4405a8d10481b21dd8d2a03c4bfe7ff3070c090cce138bdcc2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA7D54A3-D428-4D19-A9FE-6F8A9227691C/libplist.xcframework.zip", checksum: "21eccec029bed175c88e6a188388c1243f4e88083cdd452b487a441f02756e11"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA7D54A3-D428-4D19-A9FE-6F8A9227691C/libtatsu.xcframework.zip", checksum: "9874a8e72b1d12d87a62431a1bdb7d342efb531c05885b8008c17459c5023f39"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.DA7D54A3-D428-4D19-A9FE-6F8A9227691C/libusbmuxd.xcframework.zip", checksum: "f403ca3ae99ae94393236e10c15fd1a92508009d91dbbe5fa152d293559fa015"),
    ]
)

