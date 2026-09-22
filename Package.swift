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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.580A3BC1-E333-4C1D-A532-F74C1175D4AF/libimobiledevice.xcframework.zip", checksum: "4c6482cc8e0162be4384163adf0a4f55c6c337c0153f63b7e3b24473ef4c0e77"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.580A3BC1-E333-4C1D-A532-F74C1175D4AF/libimobiledevice_glue.xcframework.zip", checksum: "3d8f282171190706c10c861d6b55450185c07f5879cb1c78879fa85b214572a6"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.580A3BC1-E333-4C1D-A532-F74C1175D4AF/libplist.xcframework.zip", checksum: "e041cc476d265a24307eb1d63833a6e01fc9d048adf15b12378e716b90430c75"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.580A3BC1-E333-4C1D-A532-F74C1175D4AF/libtatsu.xcframework.zip", checksum: "02cb68a56edc81fc229f76cec5e818b80d10d7ca39245ee2d2a8128b818b9923"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.580A3BC1-E333-4C1D-A532-F74C1175D4AF/libusbmuxd.xcframework.zip", checksum: "a1556360003ca5c80279468404b4dba60bb3b553c83fbdaa680a2bf0b8e83f82"),
    ]
)

