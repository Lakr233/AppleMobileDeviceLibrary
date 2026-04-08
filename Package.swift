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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F6E4B212-E9EC-4633-876D-F31EC884E3E9/libimobiledevice.xcframework.zip", checksum: "96736b232f368b8296d155dd8d22789262ba90636952bf7fd003077d14f22250"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F6E4B212-E9EC-4633-876D-F31EC884E3E9/libimobiledevice_glue.xcframework.zip", checksum: "5f41179d6cc56aa6547c8db277c1ad4fa428aa941cb7d54fa26a8541c21a2a50"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F6E4B212-E9EC-4633-876D-F31EC884E3E9/libplist.xcframework.zip", checksum: "4e9b528af0ab2b97a91822ea9bba9d8fe45652cbb1f0453c208e0010fedc3fba"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F6E4B212-E9EC-4633-876D-F31EC884E3E9/libtatsu.xcframework.zip", checksum: "eb460bd395ef04b416c3a00aeb9c9d8d9d08fc995a50934ed5437c45e2aa53fe"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.F6E4B212-E9EC-4633-876D-F31EC884E3E9/libusbmuxd.xcframework.zip", checksum: "7be8d64f4c0e6c96e0d32704ea41245067b2ef4d506a90ac3dbb5539052ed4fc"),
    ]
)

