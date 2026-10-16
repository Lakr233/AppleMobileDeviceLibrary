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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.50EEF332-3948-424B-BE67-6BE472A0E3D5/libimobiledevice.xcframework.zip", checksum: "12920c713c6afd6cc90b7616db9442cbf9a06fb2826631f73cb64ec6bfc35b48"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.50EEF332-3948-424B-BE67-6BE472A0E3D5/libimobiledevice_glue.xcframework.zip", checksum: "199c9bc1d83f0d60071bc51e779bea92fa0e98b3e7c8b35087712bbc97a5ac5f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.50EEF332-3948-424B-BE67-6BE472A0E3D5/libplist.xcframework.zip", checksum: "1394c6d77653ccecbcd5a0c49f095a633f388b1d7b2ab5695d8a7b9730937a1c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.50EEF332-3948-424B-BE67-6BE472A0E3D5/libtatsu.xcframework.zip", checksum: "6ff0f787d24337ebde8a4a14bca930cbb585ed1ccf7292b112310df8ac02303c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.50EEF332-3948-424B-BE67-6BE472A0E3D5/libusbmuxd.xcframework.zip", checksum: "e328f82a13247f847befe703d009756cbe5bae2f00807c5f37351c9f7049915c"),
    ]
)

