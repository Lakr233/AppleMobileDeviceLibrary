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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FAAF3612-7A05-41F6-95E3-5AAAFD4D8D93/libimobiledevice.xcframework.zip", checksum: "02cc4833c810144f9f4a5e838e852b9cccc8fa8607d932eb03f646cb8fddf5f9"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FAAF3612-7A05-41F6-95E3-5AAAFD4D8D93/libimobiledevice_glue.xcframework.zip", checksum: "6fd4080a6313c78cf9d9bc7de65a4dd3bd7c0ddb553527bffb153477a17b5976"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FAAF3612-7A05-41F6-95E3-5AAAFD4D8D93/libplist.xcframework.zip", checksum: "b34324424cf138e330e8756bc8756c6b897464475b155dde22a5989d9743f7c1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FAAF3612-7A05-41F6-95E3-5AAAFD4D8D93/libtatsu.xcframework.zip", checksum: "9f2d183679f5c32ac4690f670d667ae21d32b7aec3999affca590705afe5a0fe"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FAAF3612-7A05-41F6-95E3-5AAAFD4D8D93/libusbmuxd.xcframework.zip", checksum: "9a946aedb3ff96806d23da475d1366a0cd631e5b3080a2bd1bb970862485bef5"),
    ]
)

