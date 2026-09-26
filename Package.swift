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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.571AD461-D8DC-4579-A2AE-D6F71778FEDF/libimobiledevice.xcframework.zip", checksum: "91a47e6e775569163ceff9b804a2a51ff21c3943134648bff71cfd38f97834ad"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.571AD461-D8DC-4579-A2AE-D6F71778FEDF/libimobiledevice_glue.xcframework.zip", checksum: "4bb226ab7f477589edba12d4a12a67321ab3ee0515c708479f82316f81b13c56"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.571AD461-D8DC-4579-A2AE-D6F71778FEDF/libplist.xcframework.zip", checksum: "3bc0beaaaf3864500c21a541514d08f233fa157cde1547fba9871393da6ecd07"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.571AD461-D8DC-4579-A2AE-D6F71778FEDF/libtatsu.xcframework.zip", checksum: "4b7285f36cf0e38f7969e21873481bd881acacfff10b16e8f74d0cdab716a80c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.571AD461-D8DC-4579-A2AE-D6F71778FEDF/libusbmuxd.xcframework.zip", checksum: "991afb44cfa822c7ce4309221f1ed7649c76e33f43a50f0810bc8d799be88df8"),
    ]
)

