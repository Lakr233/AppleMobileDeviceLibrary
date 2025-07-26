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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.213B2AC9-3DCC-4D62-99FF-394C467476DB/libimobiledevice.xcframework.zip", checksum: "eec4663a0433075b9c2e95e2bcbdf14343dd4bbba74d8e4ad0031afad5414320"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.213B2AC9-3DCC-4D62-99FF-394C467476DB/libimobiledevice_glue.xcframework.zip", checksum: "f42e8e7b093320ad806017fcada0a0394d629a70753d95a99ba3f1f6ff23786c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.213B2AC9-3DCC-4D62-99FF-394C467476DB/libplist.xcframework.zip", checksum: "84aa641c47cad4a821e28fa3e70af07482f342c1cc453d303f2a45a8510e89be"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.213B2AC9-3DCC-4D62-99FF-394C467476DB/libtatsu.xcframework.zip", checksum: "8f663c981ebc346ae071dc915cbe0dd286200fdf6a95a1cf7ec6631743df8f16"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.213B2AC9-3DCC-4D62-99FF-394C467476DB/libusbmuxd.xcframework.zip", checksum: "8ed9db2541dd17c207e26649e25c22f3e6e9a5b57df759b50930e3d306f1c6e1"),
    ]
)

