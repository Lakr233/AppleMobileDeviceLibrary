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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.892D9B42-5F22-4DBC-A03E-41337102FBE0/libimobiledevice.xcframework.zip", checksum: "e2b63f3253052e0299d7850c23ed5c5e0e67637666f9a0fb0fc9edb6a5104d24"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.892D9B42-5F22-4DBC-A03E-41337102FBE0/libimobiledevice_glue.xcframework.zip", checksum: "001f124a5e15b1087ebcaa2e7b865719963409238331ebc401e562abaa345b64"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.892D9B42-5F22-4DBC-A03E-41337102FBE0/libplist.xcframework.zip", checksum: "4595f67b49116306f731eebb8cb5f326eba303bf36a1b17497cc37c755c969f4"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.892D9B42-5F22-4DBC-A03E-41337102FBE0/libtatsu.xcframework.zip", checksum: "ccd1bbee9d5f24789b4a0751b7aa6b9320c899f451b7eb8cada040d3f129a51a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.892D9B42-5F22-4DBC-A03E-41337102FBE0/libusbmuxd.xcframework.zip", checksum: "0bc6711208986cc9f92261cae8babc550d8096e3557c0cdfad5a0345039518e4"),
    ]
)

