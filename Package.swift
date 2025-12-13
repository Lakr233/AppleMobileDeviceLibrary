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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.94E7C103-290D-4852-AC70-8626420C1FAF/libimobiledevice.xcframework.zip", checksum: "2fa373a59480126af9b40a25e0f02c2337cbcb65f9c2b127b77ec470d6a70443"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.94E7C103-290D-4852-AC70-8626420C1FAF/libimobiledevice_glue.xcframework.zip", checksum: "8058b0b5b91931397007a047008f3ffc1878346401368d7854ba91491297e7c4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.94E7C103-290D-4852-AC70-8626420C1FAF/libplist.xcframework.zip", checksum: "c240b0369908899bfcd61ce662728eebbd021e9dee07956d3aecb281578a7885"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.94E7C103-290D-4852-AC70-8626420C1FAF/libtatsu.xcframework.zip", checksum: "8239fec5ca7e76772758ca6d10b0028897029f3d332466ac99a197d18adbc6bc"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.94E7C103-290D-4852-AC70-8626420C1FAF/libusbmuxd.xcframework.zip", checksum: "6248164702b407c96d315d7454971cd812922c5bde0f3e6f14b58d03ec1a9781"),
    ]
)

