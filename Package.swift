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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B558974D-340B-41FA-AAD9-FF53735B3236/libimobiledevice.xcframework.zip", checksum: "c40dee0ec0475407401ebc857359e5f555616f7f7e3d384a4421bc84802b82cf"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B558974D-340B-41FA-AAD9-FF53735B3236/libimobiledevice_glue.xcframework.zip", checksum: "449cd6e43aad8262c85bedf02946e0552d9b6179be809a28f3f797549d09512e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B558974D-340B-41FA-AAD9-FF53735B3236/libplist.xcframework.zip", checksum: "94e000217697217a73956e5ea3ac69f7af3c3043971e8f3edaf40b43bef33e16"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B558974D-340B-41FA-AAD9-FF53735B3236/libtatsu.xcframework.zip", checksum: "16d05d27f257a1b8b648482295932a56e5d186a96d1990fe17059db4498979e0"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.B558974D-340B-41FA-AAD9-FF53735B3236/libusbmuxd.xcframework.zip", checksum: "e6f5b7c572ddd29530a46bf23f807e9fb67b70525834c5cd0423e9502761756d"),
    ]
)

