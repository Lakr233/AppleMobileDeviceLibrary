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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ECE3D351-BF75-4BBD-A037-EABCB334C7FD/libimobiledevice.xcframework.zip", checksum: "83291fc32ad3185d61cebc684dc94b2fcdfccc95dbb01c87d2d3b2a6ee0dbf9a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ECE3D351-BF75-4BBD-A037-EABCB334C7FD/libimobiledevice_glue.xcframework.zip", checksum: "eb504ad472bfcf13903d599dad40ab6f3354cf5291ff6c4c1f15af60f43371e4"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ECE3D351-BF75-4BBD-A037-EABCB334C7FD/libplist.xcframework.zip", checksum: "c3df4d6fb71cb6d9d9477a8d5d63055dacb1d6bdc01d4992351eb8e974111f67"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ECE3D351-BF75-4BBD-A037-EABCB334C7FD/libtatsu.xcframework.zip", checksum: "00546cca2f6671317c3855872d1fc4efa16e3069de5e03afc4327c94c67dd217"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.ECE3D351-BF75-4BBD-A037-EABCB334C7FD/libusbmuxd.xcframework.zip", checksum: "a876df4d5102dde9d96c718666bc5b6e7202f43ee4cf3145b387b7cb54b5eb82"),
    ]
)

