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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B43FD02E-892D-4014-A62D-F46BE99B8EC2/libimobiledevice.xcframework.zip", checksum: "237ad2d17bad1284ab32fe54657ceef661c1ee0f61da12be1faf303efcb35dd2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B43FD02E-892D-4014-A62D-F46BE99B8EC2/libimobiledevice_glue.xcframework.zip", checksum: "93c833609cdf68429dbcd892ad286a302e1a90ed82079827416935fd86017016"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B43FD02E-892D-4014-A62D-F46BE99B8EC2/libplist.xcframework.zip", checksum: "3b17bf4f7b2f5b9cfec955456d77a213eee78b853cffa7f808fec672d8d05908"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B43FD02E-892D-4014-A62D-F46BE99B8EC2/libtatsu.xcframework.zip", checksum: "81db4168357a698d4315182046acd6a0dafc25a36748905819d0c6c52c6cd205"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B43FD02E-892D-4014-A62D-F46BE99B8EC2/libusbmuxd.xcframework.zip", checksum: "939c454af092a38c95d66cbc956b95c90150ac823ad3af9d574dd609886514f5"),
    ]
)

