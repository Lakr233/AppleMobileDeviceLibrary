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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C18AD8FB-465C-4114-875C-163179FDBB06/libimobiledevice.xcframework.zip", checksum: "887a10b0ffee15de8ed67986d825fc600b7e165a936e5b9f081414887c457238"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C18AD8FB-465C-4114-875C-163179FDBB06/libimobiledevice_glue.xcframework.zip", checksum: "165d7be11d15a71d5700671c069055881c80234cd26fb99919780e2cd4ed3d57"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C18AD8FB-465C-4114-875C-163179FDBB06/libplist.xcframework.zip", checksum: "b9e5ce7f9f901c040a81f05a0b08200c8a046caca4ee942b8f90d550a2e19633"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C18AD8FB-465C-4114-875C-163179FDBB06/libtatsu.xcframework.zip", checksum: "ef372d487ab1bf2ecbfadbf1bad227351c26cf735041e1d7b6326bf78046df64"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C18AD8FB-465C-4114-875C-163179FDBB06/libusbmuxd.xcframework.zip", checksum: "50f284c12f5dc83b739ef70c5315392806af629d162e9a4d29bed9361a311bfc"),
    ]
)

