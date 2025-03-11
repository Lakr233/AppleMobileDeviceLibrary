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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2ED7C376-8D86-446E-9151-0D21F2D8CD21/libimobiledevice.xcframework.zip", checksum: "dd3b04a60b9c1fb34674d49764825388da5d7ec2f077efc315041558101896fa"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2ED7C376-8D86-446E-9151-0D21F2D8CD21/libimobiledevice_glue.xcframework.zip", checksum: "5560233eec8eed9619ddafe105301ba310892b545deac1b6358c6879ff5ec20c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2ED7C376-8D86-446E-9151-0D21F2D8CD21/libplist.xcframework.zip", checksum: "55206b2826be4c6583061605e1c4539913e7be816b17171ed9f381431ff5ce21"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2ED7C376-8D86-446E-9151-0D21F2D8CD21/libtatsu.xcframework.zip", checksum: "fb3e3a4eb4c2aab8f6fecacf022d668b21f9db19d695888dd85befe44540a1b9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.2ED7C376-8D86-446E-9151-0D21F2D8CD21/libusbmuxd.xcframework.zip", checksum: "ebf075bb68c0d4db0a110590a028ea2793b70d796429fd795cdc339e9a8b2b83"),
    ]
)

