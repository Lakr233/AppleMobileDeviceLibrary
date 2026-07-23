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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.968C9346-72AD-4FEB-BB70-39758AD24EF4/libimobiledevice.xcframework.zip", checksum: "20ee7c18253c9e48ca3d7ed7215b341efb1c2befefae076c36c82dab0381099a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.968C9346-72AD-4FEB-BB70-39758AD24EF4/libimobiledevice_glue.xcframework.zip", checksum: "66d0e246c30a7c3dc97779fa89811a0d2b138834dd8664ce9beb59b6df787e6e"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.968C9346-72AD-4FEB-BB70-39758AD24EF4/libplist.xcframework.zip", checksum: "e99fe05e8d560bf607c05bf12a13d17c4ca32564e76be0f24b82868be1a50c83"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.968C9346-72AD-4FEB-BB70-39758AD24EF4/libtatsu.xcframework.zip", checksum: "06d2a86c37bffaf1401241b08546679797bd9b13ca2ff7f5fd536207218a9d86"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.968C9346-72AD-4FEB-BB70-39758AD24EF4/libusbmuxd.xcframework.zip", checksum: "d0f49abf790d97b34d5f169a1bf9ec39c67977a9386675b911efbd0e720bba64"),
    ]
)

