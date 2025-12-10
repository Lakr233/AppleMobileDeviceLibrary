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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FD0BB3D7-326A-432D-898C-1BD81645F5FA/libimobiledevice.xcframework.zip", checksum: "7257ba986a422ddfc7097b70229f1fa8cdb72aea70c3653ecb4ce21ca3a03b58"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FD0BB3D7-326A-432D-898C-1BD81645F5FA/libimobiledevice_glue.xcframework.zip", checksum: "3dcd7f006edeb91cbb7d8f7bd5220c9905149a3e2a0796e3d84b8fe182ec0f96"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FD0BB3D7-326A-432D-898C-1BD81645F5FA/libplist.xcframework.zip", checksum: "c6d9ca2e7ff63f32a09f317c0aad685b709ac111a43126ce1657a15e09bd7f0e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FD0BB3D7-326A-432D-898C-1BD81645F5FA/libtatsu.xcframework.zip", checksum: "cd5defb1c826377173e08724b702a7ba1e989b1337a4528587f8ba036734a062"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.FD0BB3D7-326A-432D-898C-1BD81645F5FA/libusbmuxd.xcframework.zip", checksum: "6b3615a34ef21b9f60db22b1e31dca8e706526ea3fa285a8922050e120a53302"),
    ]
)

