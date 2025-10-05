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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C2D774A0-1376-47A2-84B4-56112F1C7284/libimobiledevice.xcframework.zip", checksum: "e83120d63b3b85b1c0cc0f07746b2bba0e233e75806769442d3a110f57e0b1bb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C2D774A0-1376-47A2-84B4-56112F1C7284/libimobiledevice_glue.xcframework.zip", checksum: "7d4d94e67c1d03200da401ec39f0fbca3c4f08b32c9878caf93cab08b736438f"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C2D774A0-1376-47A2-84B4-56112F1C7284/libplist.xcframework.zip", checksum: "367c1533758ba89c64dbfccff1f962b2684b5db22e06a730a75f7e4dee5a9c00"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C2D774A0-1376-47A2-84B4-56112F1C7284/libtatsu.xcframework.zip", checksum: "c34c449131c42e9fdebb7648f4276a1104ebc290698101076657e834ee6de6da"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C2D774A0-1376-47A2-84B4-56112F1C7284/libusbmuxd.xcframework.zip", checksum: "b160ffa20251a5794f9d40c593f1c8e9643621e640e42555961ec7d7fa9d1d01"),
    ]
)

