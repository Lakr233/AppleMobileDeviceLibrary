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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3EA8FAB-65A5-4571-AB83-94F0AAAA463F/libimobiledevice.xcframework.zip", checksum: "5363303ea5915c358ee6e5e355eeb305d7ff8ac43773a20c5412aecef385afaf"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3EA8FAB-65A5-4571-AB83-94F0AAAA463F/libimobiledevice_glue.xcframework.zip", checksum: "734d3bdca11809712c7b98ce7ed13761feb6309c5242419a69d3e20408663b25"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3EA8FAB-65A5-4571-AB83-94F0AAAA463F/libplist.xcframework.zip", checksum: "099efe4053b9af3d9747c9943b4dbec4077044c2e49308f8908d0074d1fd2d67"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3EA8FAB-65A5-4571-AB83-94F0AAAA463F/libtatsu.xcframework.zip", checksum: "4ef975ba1a9d122e97e4fa919477ed2fd197cf860c1158bcd49b9ffce19f5a10"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C3EA8FAB-65A5-4571-AB83-94F0AAAA463F/libusbmuxd.xcframework.zip", checksum: "f4fd747633aacb8367988ec432976e57b21e8c387fd36b37cec54a291a4017ff"),
    ]
)

