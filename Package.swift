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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0096840A-2C64-4B7F-8D64-37191B0328C9/libimobiledevice.xcframework.zip", checksum: "b13f55afce7faeee7cf5e1080ca8944b9ced6ecadabbbca924be85395fe1c895"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0096840A-2C64-4B7F-8D64-37191B0328C9/libimobiledevice_glue.xcframework.zip", checksum: "080af689dfba9e70676b53125f883a3e51544561df96366ca690d36a0031738f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0096840A-2C64-4B7F-8D64-37191B0328C9/libplist.xcframework.zip", checksum: "34fb1b9933bb67f1039986da10dcdad6cbea85304bb351b7520bff0bc4dc2435"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0096840A-2C64-4B7F-8D64-37191B0328C9/libtatsu.xcframework.zip", checksum: "b5cf490ffabcdbedbd26f7b37505c2140043c4250e97576cca7742d610718273"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0096840A-2C64-4B7F-8D64-37191B0328C9/libusbmuxd.xcframework.zip", checksum: "53143abfadc195121c6e231b9db43040b2500f0d27f6ff46f8a4216f6a12f1b3"),
    ]
)

