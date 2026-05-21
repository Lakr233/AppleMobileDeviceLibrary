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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38A466F9-A9A6-4981-97EB-9D5D2595A2C3/libimobiledevice.xcframework.zip", checksum: "61fde558dc7d4e02ef7cc0b6c30c0b51ede7d2e4069a8d0f36a2aa8ad11c81a9"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38A466F9-A9A6-4981-97EB-9D5D2595A2C3/libimobiledevice_glue.xcframework.zip", checksum: "626f74a81ce256257a4d1b04207307a82157755bded8d4124e98d056a8bb63bd"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38A466F9-A9A6-4981-97EB-9D5D2595A2C3/libplist.xcframework.zip", checksum: "709c1ef2613915a7cd5be98bf2e758a4868c203a84d70a4237386109656fa29d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38A466F9-A9A6-4981-97EB-9D5D2595A2C3/libtatsu.xcframework.zip", checksum: "9f8c3e4b8841fbadf3a6f3bf2f4ee8cc85d3e6ab7f0f09a2491af74c7726b82d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.38A466F9-A9A6-4981-97EB-9D5D2595A2C3/libusbmuxd.xcframework.zip", checksum: "bdcdfe7fd4b8a6f2e551cc71ad2d393a94298de651aed9e5253057350250047d"),
    ]
)

